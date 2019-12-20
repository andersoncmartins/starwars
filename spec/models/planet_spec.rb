require 'rails_helper'

RSpec.describe Planet, type: :model do
  describe '#name' do 
    it 'should not valid if name is blank' do
      expect(build(:planet, :blank_name)).to_not be_valid
    end
    
    it 'should not valid if name is null' do
      expect(build(:planet, :null_name)).to_not be_valid
    end

    it 'should not valid if name is not unique' do
      expect(Planet.create(name: "Planeta 1", url: 'https://swapi.co/api/planets/1')).to be_valid
      expect(Planet.create(name: "Planeta 1", url: 'https://swapi.co/api/planets/1')).to_not be_valid
    end
  end
end
