class Rover 
  attr_reader :current_coordinates

  def initialize
    @current_coordinates = current_coordinates
  end
  
  def move(max_x_y, starting_coordinates, directions)
    directions.chars.each do | letter |
      if letter == "M" 
        starting_coordinates[1] +=1
      end 
    end 
      @current_coordinates = starting_coordinates
  end
end 

