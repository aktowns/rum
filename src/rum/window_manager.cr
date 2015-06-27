require "./xorg/constants"
require "./xorg/libx11"

require "./window"
require "./event_manager"

module Rum
  include Xorg
  include Xorg::Constants

  class WindowManager
    def initialize
      @display = LibX11.open_display(nil)
      @root    = LibX11.default_root_window(@display)

      check_wm_not_running

      @windows = get_windows
      @windows.each{|window|window.set_frame}

      @event_manager = EventManager.instance(@display)
      @event_manager.on_create_notify(-> (e: LibX11Events::XCreateWindowEvent) {
        p e
        puts "created a new window"
      })
      # @event_manager.on_map_request(-> (e: LibX11Events::XMapRequestEvent) {
      #   p e
      #   LibX11.map_window(e.display, e.window)
      # })
      @event_manager.on_configure_request(-> (e: LibX11Events::XConfigureRequestEvent) {
        changes = LibX11::XWindowChanges.new()
        changes.x = e.x
        changes.y = e.y
        changes.width = e.width
        changes.height = e.height
        changes.border_width = e.border_width
        changes.sibling = e.above
        changes.stack_mode = e.detail

        LibX11.configure_window(e.display, e.window, UInt32.cast(e.value_mask), pointerof(changes))
      })
      @event_manager.on_button_press(-> (e: LibX11Events::XButtonPressedEvent) {
        LibX11.raise_window(e.display, e.window)
      })

      Thread.new do
        puts "Spawning background event loop thread"
        @event_manager.event_loop
      end
    end

    def run_loop
      loop do
        sleep 30
      end
    end

    private def check_wm_not_running
      LibX11.set_error_handler(-> (display, event_ptr) {
        event = event_ptr.value as LibX11Events::XErrorEvent
        abort "Window manager already running, bailing" if event.error_code == BadAccess
        0
      })
      LibX11.select_input(@display, @root, Int64.cast(SubstructureRedirectMask | SubstructureNotifyMask))
      LibX11.sync(@display, false)
    end

    private def get_windows
      LibX11.grab_server(@display)
      LibX11.query_tree(@display, @root, out returned_root, out returned_parent,
                        out top_level_windows, out num_top_level_windows)

      windows = (0..num_top_level_windows).to_a.map do |i|
        Window.new(@display, top_level_windows[i])
      end

      LibX11.free(top_level_windows as Void*)
      LibX11.ungrab_server(@display)

      windows
    end
  end
end
