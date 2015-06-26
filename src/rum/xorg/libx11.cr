require "./types"
require "./libx11_events"
require "./key_sym"

module Rum::Xorg
  include Types
  include KeySym

  @[Link("X11")]
  lib LibX11
    struct XWindowChanges
      x            : Int32
      y            : Int32
      width        : Int32
      height       : Int32
      border_width : Int32
      sibling      : Window
      stack_mode   : Int32
    end

    struct Screen
    	ext_data        : Void*
      display         : Display*
    	root            : Window
    	width           : Int32
      height          : Int32
    	mwidth          : Int32
      mheight         : Int32
    	ndepths         : Int32
    	depths          : Void*
    	root_depth      : Int32
    	root_visual     : Void*
    	default_gc      : Void*
    	cmap            : Colormap
    	white_pixel     : ULong
    	black_pixel     : ULong
    	max_maps        : Int32
      min_maps        : Int32
    	backing_store   : Int32
    	save_unders     : Bool
    	root_input_mask : Long
    end

    struct XWindowAttributes
      x                     : Int32
      y                     : Int32
      width                 : Int32
      height                : Int32
      border_width          : Int32
      depth                 : Int32
      visual                : Void*
      root                  : Window
      klass                 : Int32
      bit_gravity           : Int32
      win_gravity           : Int32
      backing_store         : Int32
      backing_planes        : ULong
      backing_pixel         : ULong
      save_under            : Bool
      colormap              : Colormap
      map_installed         : Bool
      map_state             : Int32
      all_event_masks       : Long
      your_event_mask       : Long
      do_not_propagate_mask : Long
      override_redirect     : Bool
      screen                : Screen*
    end

    alias XErrorHandler = Display*, LibX11Events::XErrorEvent* -> Int32

    fun open_display             = XOpenDisplay(UInt8*)                                                                      : Display*
    fun close_display            = XCloseDisplay(Display*)                                                                   : Int32
    fun default_root_window      = XDefaultRootWindow(Display*)                                                              : Window
    fun select_input             = XSelectInput(Display*, Window, Long)                                                      : Int32
    fun sync                     = XSync(Display*, Bool)                                                                     : Int32
    fun set_error_handler        = XSetErrorHandler(XErrorHandler)                                                           : Void
    fun grab_server              = XGrabServer(Display*)                                                                     : Int32
    fun ungrab_server            = XUngrabServer(Display*)                                                                   : Int32
    fun query_tree               = XQueryTree(Display*, Window, Window*, Window*, Window**, UInt32*)                         : Status
    fun free                     = XFree(Void*)                                                                              : Int32
    fun get_window_attributes    = XGetWindowAttributes(Display*, Window, XWindowAttributes*)                                : Status
    fun create_simple_window     = XCreateSimpleWindow(Display*, Window, Int32, Int32, UInt32, UInt32, UInt32, ULong, ULong) : Window
    fun add_to_save_set          = XAddToSaveSet(Display*, Window)                                                           : Int32
    fun reparent_window          = XReparentWindow(Display*, Window, Window, Int32, Int32)                                   : Int32
    fun map_window               = XMapWindow(Display*, Window)                                                              : Int32

    fun grab_button              = XGrabButton(Display*, UInt32, UInt32, Window, Bool, UInt32, Int32, Int32, Window, Cursor) : Int32
    fun grab_key                 = XGrabKey(Display*, Int32, UInt32, Window, Bool, Int32, Int32)                             : Int32
    fun keysym_to_keycode        = XKeysymToKeycode(Display*, KeySymT)                                                       : KeyCode
    fun configure_window         = XConfigureWindow(Display*, Window, UInt32, XWindowChanges*)                               : Int32
    fun raise_window             = XRaiseWindow(Display*, Window)                                                            : Int32
  end
end
