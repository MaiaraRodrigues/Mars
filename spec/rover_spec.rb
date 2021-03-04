require 'rover'

describe Rover do 
let (:rover) { described_class.new }
  describe '#instructions' do 
    it 'instructs the rover to move' do
      expect(rover).to respond_to(:instructions)
    end  

  end 



end 