class Rover 
  attr_reader :current_coordinates
  LEFT_MOVES = { "N" => "W", "W" => "S","S" => "E","E" => "N" }
  RIGHT_MOVES = {"N" => "E", "E" => "S", "S" => "W", "W" => "N"}
  

  def initialize
    @current_coordinates = current_coordinates
  end
  
  def move(max_x_y, starting_coordinates, directions)
    directions.chars.each do | letter |
      if letter == "M" 
        if starting_coordinates[2] == "N"
          starting_coordinates[1] +=1
        elsif starting_coordinates[2] == "S"
          starting_coordinates[1] -=1
        elsif starting_coordinates[2] == "E"
          starting_coordinates[0] +=1
        else starting_coordinates[2] == "W"
          starting_coordinates[0] -=1
        end
      else letter == "L"
        starting_coordinates[2] = LEFT_MOVES[starting_coordinates[2]]
      end 
    end 
      @current_coordinates = starting_coordinates
  end
end 
#  4 is x 
#  1 is y 
#  n is the direction 

# if the heading is north is +1 
# north +1 on y 
# south -1 on y 
# east +1 on x
# west -1 on x 

