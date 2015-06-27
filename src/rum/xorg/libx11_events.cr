require "./types"

module Rum::Xorg
  include Types

  @[Link("X11")]
  lib LibX11Events
    struct XAnyEvent
      type       : Int32
      serial     : ULong
      send_event : Bool
      display    : Display*
      window     : Window
    end

    struct XKeyEvent
      type        : Int32
      serial      : ULong
      send_event  : Bool
      display     : Display*
      window      : Window
      root        : Window
      subwindow   : Window
      time        : Time
      x           : Int32
      y           : Int32
      x_root      : Int32
      y_root      : Int32
      state       : UInt32
      keycode     : UInt32
      same_screen : Bool
    end
    alias XKeyPressedEvent  = XKeyEvent
    alias XKeyReleasedEvent = XKeyEvent

    struct XButtonEvent
      type        : Int32
      serial      : ULong
      send_event  : Bool
      display     : Display*
      window      : Window
      root        : Window
      subwindow   : Window
      time        : Time
      x           : Int32
      y           : Int32
      x_root      : Int32
      y_root      : Int32
      state       : UInt32
      button      : UInt32
      same_screen : Bool
    end
    alias XButtonPressedEvent  = XButtonEvent
    alias XButtonReleasedEvent = XButtonEvent

    struct XMotionEvent
      type : Int32
      serial : ULong
      send_event : Bool
      display : Display*
      window : Window
      root : Window
      subwindow : Window
      time : Time
      x : Int32
      y : Int32
      x_root : Int32
      y_root : Int32
      state : UInt32
      is_hint : UInt8
      same_screen : Bool
    end
    alias XPointerMovedEvent = XMotionEvent

    struct XCrossingEvent
      type : Int32
      serial : ULong
      send_event : Bool
      display : Display*
      window : Window
      root : Window
      subwindow : Window
      time : Time
      x : Int32
      y : Int32
      x_root : Int32
      y_root : Int32
      mode : UInt32
      detail : UInt32
      same_screen : Bool
      focus : Bool
      state : UInt32
    end
    alias XEnterWindowEvent = XCrossingEvent
    alias XLeaveWindowEvent = XCrossingEvent

    struct XFocusChangeEvent
      type : Int32
      serial : ULong
      send_event : Bool
      display : Display*
      window : Window
      mode : Int32
      detail : Int32
    end
    alias XFocusInEvent = XFocusChangeEvent
    alias XFocusOutEvent = XFocusChangeEvent

    struct XExposeEvent
      type : Int32
      serial : ULong
      send_event : Bool
      display : Display*
      window : Window
      x : Int32
      y : Int32
      width : Int32
      height : Int32
      count : Int32
    end

    struct XGraphicsExposeEvent
      type : Int32
      serial : ULong
      send_event : Bool
      display : Display*
      drawable : Drawable
      x : Int32
      y : Int32
      width : Int32
      height : Int32
      count : Int32
      major_code : Int32
      minor_code : Int32
    end

    struct XNoExposeEvent
      type : Int32
      serial : ULong
      send_event : Bool
      display : Display*
      drawable : Drawable
      major_code : Int32
      minor_code : Int32
    end

    struct XVisibilityEvent
      type : Int32
      serial : ULong
      send_event : Bool
      display : Display*
      window : Window
      state : Int32
    end

    struct XCreateWindowEvent
      type : Int32
      serial : ULong
      send_event : Bool
      display : Display*
      parent : Window
      window : Window
      x : Int32
      y : Int32
      width : Int32
      height : Int32
      border_width : Int32
      override_redirect : Bool
    end

    struct XDestroyWindowEvent
      type : Int32
      serial : ULong
      send_event : Bool
      display : Display*
      event : Window
      window : Window
    end

    struct XUnmapEvent
      type : Int32
      serial : ULong
      send_event : Bool
      display : Display*
      event : Window
      window : Window
      from_configure : Bool
    end

    struct XMapEvent
      type : Int32
      serial : ULong
      send_event : Bool
      display : Display*
      event : Window
      window : Window
      override_redirect : Bool
    end

    struct XMapRequestEvent
      type : Int32
      serial : ULong
      send_event : Bool
      display : Display*
      parent : Window
      window : Window
    end

    struct XReparentEvent
      type : Int32
      serial : ULong
      send_event : Bool
      display : Display*
      event : Window
      window : Window
      parent : Window
      x : Int32
      y : Int32
      override_redirect : Bool
    end

    struct XConfigureEvent
      type : Int32
      serial : ULong
      send_event : Bool
      display : Display*
      event : Window
      window : Window
      x : Int32
      y : Int32
      width : Int32
      height : Int32
      border_width : Int32
      above : Window
      override_redirect : Bool
    end

    struct XGravityEvent
      type : Int32
      serial : ULong
      send_event : Bool
      display : Display*
      event : Window
      window : Window
      x : Int32
      y : Int32
    end

    struct XResizeRequestEvent
      type : Int32
      serial : ULong
      send_event : Bool
      display : Display*
      window : Window
      width : Int32
      height : Int32
    end

    struct XConfigureRequestEvent
      type : Int32
      serial : ULong
      send_event : Bool
      display : Display*
      parent : Window
      window : Window
      x : Int32
      y : Int32
      width : Int32
      height : Int32
      border_width : Int32
      above : Window
      detail : Int32
      value_mask : ULong
    end

    struct XCirculateEvent
      type : Int32
      serial : ULong
      send_event : Bool
      display : Display*
      event : Window
      window : Window
      place : Int32
    end

    struct XCirculateRequestEvent
      type : Int32
      serial : ULong
      send_event : Bool
      display : Display*
      parent : Window
      window : Window
      place : Int32
    end

    struct XPropertyEvent
      type : Int32
      serial : ULong
      send_event : Bool
      display : Display*
      window : Window
      atom : Atom
      time : Time
      state : Int32
    end

    struct XSelectionClearEvent
      type : Int32
      serial : ULong
      send_event : Bool
      display : Display*
      window : Window
      selection : Atom
      time : Time
    end

    struct XSelectionRequestEvent
      type : Int32
      serial : ULong
      send_event : Bool
      display : Display*
      owner : Window
      requestor : Window
      selection : Atom
      target : Atom
      property : Atom
      time : Time
    end

    struct XSelectionEvent
      type : Int32
      serial : ULong
      send_event : Bool
      display : Display*
      requestor : Window
      selection : Atom
      target : Atom
      property : Atom
      time : Time
    end

    struct XColormapEvent
      type : Int32
      serial : ULong
      send_event : Bool
      display : Display*
      window : Window
      colormap : Colormap
      c_new : Bool
      state : Int32
    end

    union XClientMessageEventData
      b : UInt8[20]
      s : UInt16[10]
      l : Long[5]
    end

    struct XClientMessageEvent
      type         : Int32
      serial       : ULong
      send_event   : Bool
      display      : Display*
      window       : Window
      message_type : Atom
      format       : Int32
      data         : XClientMessageEventData
    end

    struct XMappingEvent
      type          : Int32
      serial        : ULong
      send_event    : Bool
      display       : Display*
      window        : Window
      request       : Int32
      first_keycode : Int32
      count         : Int32
    end

    struct XKeymapEvent
      type       : Int32
      serial     : ULong
      send_event : Bool
      display    : Display*
      window     : Window
      key_vector : Int8[32]
    end

    struct XGenericEvent
      type       : Int32
      serial     : ULong
      send_event : Bool
      display    : Display*
      extension  : Int32
      evtype     : Int32
    end

    struct XGenericEventCookie
      type       : Int32
      serial     : ULong
      send_event : Bool
      display    : Display*
      extension  : Int32
      evtype     : Int32
      cookie     : UInt32
      data       : Void*
    end

    struct XErrorEvent
      type         : Int32
      display      : Display*
      resource_id  : XID
      serial       : ULong
      error_code   : UInt8
      request_code : UInt8
      minor_code   : UInt8
    end

    alias XorgEvents = ( XAnyEvent | XKeyEvent | XButtonEvent | XMotionEvent | XCrossingEvent |
                         XFocusChangeEvent | XExposeEvent | XGraphicsExposeEvent | XNoExposeEvent |
                         XVisibilityEvent | XCreateWindowEvent | XDestroyWindowEvent | XUnmapEvent |
                         XMapEvent | XMapRequestEvent | XReparentEvent | XConfigureEvent | XGravityEvent |
                         XResizeRequestEvent | XConfigureRequestEvent | XCirculateEvent | XCirculateRequestEvent |
                         XPropertyEvent | XSelectionClearEvent | XSelectionRequestEvent | XSelectionEvent |
                         XColormapEvent | XClientMessageEvent | XMappingEvent | XErrorEvent | XKeymapEvent |
                         XGenericEvent | XGenericEventCookie )

    union XEvent
      type              : Int32
    	xany              : XAnyEvent
    	xkey              : XKeyEvent
    	xbutton           : XButtonEvent
    	xmotion           : XMotionEvent
    	xcrossing         : XCrossingEvent
    	xfocus            : XFocusChangeEvent
    	xexpose           : XExposeEvent
    	xgraphicsexpose   : XGraphicsExposeEvent
    	xnoexpose         : XNoExposeEvent
    	xvisibility       : XVisibilityEvent
    	xcreatewindow     : XCreateWindowEvent
    	xdestroywindow    : XDestroyWindowEvent
    	xunmap            : XUnmapEvent
    	xmap              : XMapEvent
    	xmaprequest       : XMapRequestEvent
    	xreparent         : XReparentEvent
    	xconfigure        : XConfigureEvent
    	xgravity          : XGravityEvent
    	xresizerequest    : XResizeRequestEvent
    	xconfigurerequest : XConfigureRequestEvent
    	xcirculate        : XCirculateEvent
    	xcirculaterequest : XCirculateRequestEvent
    	xproperty         : XPropertyEvent
    	xselectionclear   : XSelectionClearEvent
    	xselectionrequest : XSelectionRequestEvent
    	xselection        : XSelectionEvent
    	xcolormap         : XColormapEvent
    	xclient           : XClientMessageEvent
    	xmapping          : XMappingEvent
    	xerror            : XErrorEvent
    	xkeymap           : XKeymapEvent
    	xgeneric          : XGenericEvent
    	xcookie           : XGenericEventCookie
    	# long pad[24]
    end

    fun next_event               = XNextEvent(Display*, XEvent*)                                                             : Int32
    fun check_typed_window_event = XCheckTypedWindowEvent(Display*, Window, Int32, XEvent*)                                  : Bool
  end

end
