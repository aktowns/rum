require "../../xorg/libx11_events"
require "../../xorg/constants"
require "./event_handler"

class Rum::Xorg::Events
  include Xorg

  macro register_handler(xorg_event, event_type, event_arg)
    @handlers[Constants::{{xorg_event}}] = EventHandler({{event_type}}).new(->(ev: LibX11Events::XEvent) { ev.{{event_arg}} })
    {{ debug() }}
  end

  macro on_event(xorg_event, event_type)
    def on_{{xorg_event.id.underscore}}(&cb : Proc({{event_type}}, Bool))
      @handlers[Constants::{{xorg_event}}].add(&cb)
    end
  end

  def initialize(@display)
    @handlers = {} of Int32 => EventHandler(LibX11Events::XorgEvents)

    register_handler(CreateNotify, LibX11Events::XCreateWindowEvent, xcreatewindow)
    register_handler(ReparentNotify, LibX11Events::XReparentEvent, xreparent)
    register_handler(MapRequest, LibX11Events::XMapRequestEvent, xmaprequest)
    register_handler(ConfigureRequest, LibX11Events::XConfigureRequestEvent, xconfigurerequest)
    register_handler(MapNotify, LibX11Events::XMapEvent, xmap)
    register_handler(ButtonPress, LibX11Events::XButtonPressedEvent, xbutton)
    register_handler(ButtonRelease, LibX11Events::XButtonReleasedEvent, xbutton)
    register_handler(MotionNotify, LibX11Events::XMotionEvent, xmotion)
    register_handler(UnmapNotify, LibX11Events::XUnmapEvent, xunmap)

    puts "Registered #{@handlers.length} xorg event handlers."
  end

  on_event(CreateNotify, LibX11Events::XCreateWindowEvent)
  #on_event(ReparentNotify, LibX11Events::XReparentEvent)

  def event_loop
    loop do
      LibX11Events.next_event(@display, out event)

      @handlers[event.type].fire(event)
    end
  end
end
