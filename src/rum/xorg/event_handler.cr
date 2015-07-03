require "../../xorg/libx11_events"

class Rum::Xorg::EventHandler(T)
  include Xorg

  def initialize(@retriever : Proc(LibX11Events::XEvent, T))
    @handlers = [] of Proc(T, Bool)
  end

  def add(&handler : Proc(T, Bool))
    #  here i hit https://github.com/manastech/crystal/issues/922
    @handlers << handler
  end

  def fire(event_object : LibX11Events::XEvent)
    @handlers.each do |handler|
      return if handler.call(@retriever.call(event_object))
    end
  end
end
