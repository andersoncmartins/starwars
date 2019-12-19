require 'rails_helper'

RSpec.describe Specie, type: :model do
  describe '#name' do 
    it 'should not valid if name is blank' do
      expect(Specie.create(name: '', url: 'https://swapi.co/api/species/1')).to_not be_valid
    end
    
    it 'should not valid if name is null' do
      expect(Specie.create(name: nil, url: 'https://swapi.co/api/species/1')).to_not be_valid
    end

    it 'should not valid if name is not unique' do
      name1 = FFaker::Name.name
      name2 = FFaker::Name.name
      expect(Specie.create(name: name1, url: 'https://swapi.co/api/starships/1')).to be_valid
      expect(Specie.create(name: name2, url: 'https://swapi.co/api/starships/1')).to be_valid
      expect(Specie.create(name: name1, url: 'https://swapi.co/api/starships/1')).to_not be_valid
    end
  end
end
