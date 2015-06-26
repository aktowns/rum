module Rum::Xorg::Types
  ifdef x86_64
    alias Long   = Int64
    alias ULong  = UInt64
  else
    alias Long   = Int32
    alias ULong  = UInt32
  end

  alias XID      = ULong
  alias Window   = XID
  alias Colormap = XID
  alias Status   = Int32
  alias Time     = ULong
  alias Drawable = XID
  alias Atom     = ULong
  alias Cursor   = XID
  alias KeyCode  = UInt8
  alias KeySym   = XID

  @[Link("X11")]
  lib LibX11Types
    type Display   = Void
  end

  alias Display = LibX11Types::Display
end
