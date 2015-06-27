require "./xorg/libx11_events"

module Rum
  include Xorg

  class Event(T)
    def initialize
      @handlers = [] of Proc(T, Void)
    end

    def call(args: T)
      @handlers.each do |handler|
        handler.call(args)
      end
    end

    def add(&f: Proc(T, Void))
      @handlers << f
    end
  end

  class StartupEventArg
  end

  class EventManager
    macro create_handler(name, event)
      def on_{{ name }}(cb)
        (@{{ name }}_event ||= Event({{event}}).new).add(&cb)
      end

      def fire_{{ name }}(ev)
        (@{{ name }}_event ||= Event({{event}}).new).call(ev)
      end
    end

    create_handler(startup, StartupEventArg)

    create_handler(create_notify, LibX11Events::XCreateWindowEvent)
    create_handler(reparent_notify, LibX11Events::XReparentEvent)
    create_handler(map_request, LibX11Events::XMapRequestEvent)
    create_handler(configure_request, LibX11Events::XConfigureRequestEvent)
    create_handler(map_notify, LibX11Events::XMapEvent)
    create_handler(button_press, LibX11Events::XButtonPressedEvent)
    create_handler(button_release, LibX11Events::XButtonReleasedEvent)
    create_handler(motion_notify, LibX11Events::XMotionEvent)
    create_handler(unmap_notify, LibX11Events::XUnmapEvent)

    def initialize(@display)
      @startup_event = Event(StartupEventArg).new
    end

    def self.instance(display=nil)
      raise "Rum::Events requires a display variable for singleton intialization" if @@instance.nil? && display.nil?
      @@instance ||= new(display)
    end


    def event_loop
      fire_startup(StartupEventArg.new)

      loop do
        LibX11Events.next_event(@display, out event)
        case event.type
        when CreateNotify then fire_create_notify(event.xcreatewindow)
        when ReparentNotify then fire_reparent_notify(event.xreparent)
        when MapRequest then fire_map_request(event.xmaprequest)
        when ConfigureRequest then fire_configure_request(event.xconfigurerequest)
        when MapNotify then fire_map_notify(event.xmap)
        when ButtonPress then fire_button_press(event.xbutton)
        when ButtonRelease then fire_button_release(event.xbutton)
        when MotionNotify
          while (LibX11Events.check_typed_window_event(@display, event.xmotion.window, MotionNotify, out event))
          end
          fire_motion_notify(event.xmotion)
        when UnmapNotify then fire_unmap_notify(event.xunmap)
        else
          puts "Unhandled action: #{event.type}"
        end
      end
    end
  end
end
