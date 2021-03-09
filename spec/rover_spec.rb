require 'rover'

describe Rover do 
  let(:rover) { described_class.new }

  describe "#move" do 
    it "instructs the rover to move" do
      expect(rover).to respond_to(:move).with(3).arguments
    end  

    it "moves by one space on the plateau" do
      rover.move([5, 5], [4, 1, "N"], "M")
      expect(rover.current_coordinates).to eq [4, 2, "N"]
    end

    it "moves two squares and turn left" do
      rover.move([5, 5], [4, 1, "N"], "MLM")
      expect(rover.current_coordinates).to eq [3, 2, "W"]
    end


  end 
end 
