module Rum
  class Window
    def initialize(@display, @handle)
      @root = LibX11.default_root_window(@display)
    end

    def set_frame
      LibX11.get_window_attributes(@display, @handle, out window_attrs)

      frame = LibX11.create_simple_window(@display, @root, window_attrs.x, window_attrs.y,
                                  UInt32.cast(window_attrs.width), UInt32.cast(window_attrs.height),
                                  UInt32.cast(5), Types::ULong.cast(0xff0000), Types::ULong.cast(0x0000ff))

      LibX11.select_input(@display, frame, Int64.cast(SubstructureRedirectMask | SubstructureNotifyMask))
      LibX11.add_to_save_set(@display, @handle)
      LibX11.reparent_window(@display, @handle, frame, 0, 0)
      LibX11.map_window(@display, frame)

      LibX11.grab_button(@display, Button1, Mod1Mask, @handle, false,
                         UInt32.cast(ButtonPressMask | ButtonReleaseMask | ButtonMotionMask),
                         GrabModeAsync, GrabModeAsync, None, None)
      LibX11.grab_button(@display, Button3, Mod1Mask, @handle, false,
                         UInt32.cast(ButtonPressMask | ButtonReleaseMask | ButtonMotionMask),
                         GrabModeAsync, GrabModeAsync, None, None)
      LibX11.grab_key(@display, Int32.cast(LibX11.keysym_to_keycode(@display, KeySym::XK_F4)),
                      Mod1Mask, @handle, false, GrabModeAsync, GrabModeAsync)
      LibX11.grab_key(@display, Int32.cast(LibX11.keysym_to_keycode(@display, KeySym::XK_Tab)),
                      Mod1Mask, @handle, false, GrabModeAsync, GrabModeAsync)
    end
    def remove_frame
    end

  end
end
