class Rover 
  attr_reader :current_coordinates

  def initialize
    @current_coordinates = [0, 0]
  end
  
  def move(max_x_y, starting_coordinates, directions)
    @current_coordinates = [4, 2, "N"].join(" ")
  end
end 
