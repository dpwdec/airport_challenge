class Plane
  
  attr_reader :port
  
  def initialize
    @state = true
  end
  
  def land_at(airport)
    raise 'This plane is already landed.' if @state == false
    @state = false
    @port = airport
    airport.dock(self)
  end
  
  def depart
    raise 'Plane is already airborne.' if @state
    @state = true
    @port.undock(self)
    @port = nil
  end
  
  def flying?
    @state
  end
end