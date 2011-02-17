class Sample
  attr_accessor :primary_force, :secondary_force, :mass, :delay

  def initialize(primary, secondary)
    @primary_force, @secondary_force = primary, secondary
    @mass, @delay = 10, 20
  end
    
  def distance_traveled(time)
    acc = @primary_force / @mass
    primary_time = [time, @delay].min
    result = 0.5 * acc * primary_time * primary_time
    secondary_time = time - @delay
    if(secondary_time > 0)
      primary_vel = acc * @delay
      acc = (@primary_force + @secondary_force) / @mass
      result += primary_vel * secondary_time + 5 * acc * secondary_time * secondary_time
    end
    result
  end
end
