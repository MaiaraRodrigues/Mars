class Rover 
  attr_reader :current_coordinates
  LEFT_MOVES = { "N" => "W", "W" => "S", "S" => "E", "E" => "N" }
  RIGHT_MOVES = { "N" => "E", "E" => "S", "S" => "W", "W" => "N" }
  

  def initialize
    @current_coordinates = current_coordinates
  end
  
  def move(_max_x_y, starting_coordinates, directions)
    directions.chars.each do |letter|
      if letter == "M" 
        m_direction(starting_coordinates)
      elsif letter == "L"
        left_directions(starting_coordinates)
      else letter == "R"
        starting_coordinates[2] = RIGHT_MOVES[starting_coordinates[2]]
      end 
    end 
    @current_coordinates = starting_coordinates
  end

  private

  def m_direction(starting_coordinates)
    if starting_coordinates[2] == "N"
      starting_coordinates[1] += 1
    elsif starting_coordinates[2] == "S"
      starting_coordinates[1] -= 1
    elsif starting_coordinates[2] == "E"
      starting_coordinates[0] += 1
    else starting_coordinates[2] == "W"
      starting_coordinates[0] -= 1
    end
  end  

  def left_directions(starting_coordinates)
    starting_coordinates[2] = LEFT_MOVES[starting_coordinates[2]]
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
