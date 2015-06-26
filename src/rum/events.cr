require "./xorg/libx11_events"

module Rum
  class Events
    def initialize(@display)
    end

    def self.instance(display=nil)
      raise "Rum::Events requires a display variable for singleton intialization" if @@instance.nil? && display.nil?
      @@instance ||= new(display)
    end

    def on_map_request(e)
      LibX11.map_window(e.display, e.window)
    end

    def on_configure_request(e)
      changes = LibX11::XWindowChanges.new()
      changes.x = e.x
      changes.y = e.y
      changes.width = e.width
      changes.height = e.height
      changes.border_width = e.border_width
      changes.sibling = e.above
      changes.stack_mode = e.detail

      LibX11.configure_window(e.display, e.window, UInt32.cast(e.value_mask), pointerof(changes))
    end

    def on_button_press(e)
      LibX11.raise_window(e.display, e.window)
    end

    def on_motion_notify(e)
    end

    def event_loop
      loop do
        LibX11Events.next_event(@display, out event)
        case event.type
        when CreateNotify
          puts "Creating a window."
        when ReparentNotify
          puts "Reparenting a window."
        when MapRequest
          on_map_request(event.xmaprequest)
        when ConfigureRequest
          on_configure_request(event.xconfigurerequest)
        when MapNotify
          puts "Mapping a window."
        when ButtonPress
          on_button_press(event.xbutton)
        when ButtonRelease
        when MotionNotify
          while (LibX11Events.check_typed_window_event(@display, event.xmotion.window, MotionNotify, out event))
          end
          on_motion_notify(event.xmotion)
        when UnmapNotify
          puts "Unmapping a window."
        else
          puts "Unhandled action: #{event.type}"
        end
      end
    end
  end
end
