require 'rover'

describe Rover do 
  let(:rover) { described_class.new }

  describe "#move" do 
    it "instructs the rover to move" do
      expect(rover).to respond_to(:move).with(3).arguments
    end  
  end 
end 
