require 'rails_helper'

RSpec.describe Starship, type: :model do
  describe '#name' do 
    it 'should not valid if name is blank' do
      expect(build(:starship, :blank_name)).to_not be_valid
    end
    
    it 'should not valid if name is null' do
      expect(build(:starship, :null_name)).to_not be_valid
    end

    it 'should not valid if name is not unique' do
      name1 = FFaker::Name.name
      name2 = FFaker::Name.name
      expect(Starship.create(name: name1, url: 'https://swapi.co/api/starships/1')).to be_valid
      expect(Starship.create(name: name2, url: 'https://swapi.co/api/starships/1')).to be_valid
      expect(Starship.create(name: name1, url: 'https://swapi.co/api/starships/1')).to_not be_valid
    end
  end
end
