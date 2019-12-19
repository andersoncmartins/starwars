require 'rails_helper'

RSpec.describe Planet, type: :model do
  describe '#name' do 
    it 'should not valid if name is blank' do
      # planet = Planet.create(name: '')
      #planet.errors[:name].should include("can't be blank")
      expect(Planet.create(name: '')).to_not be_valid
    end
    
    it 'should not valid if name is null' do
      expect(Planet.create(name: nil)).to_not be_valid
    end
  end
  # context "validates" do
  #   it "should not create planet if name is null" do
  #     planet = Planet.create
  #     expect(planet.errors).to raise_error
  #   end

  #   it "should not create planet if name is blank"

  #   it "should create planet if name is not null and is not blank"
  # end
end
