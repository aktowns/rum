require "./xorg/events"

class Rum::EventManager
  def initialize(@display)
    @xorg_events = Xorg::Events.new(@display)
    @xorg_events.on_create_notify do |winevent|
      puts "Window Created.."
      false
    end
  end

  def start
    Thread.new do
      @xorg_events.event_loop
    end
  end
end
