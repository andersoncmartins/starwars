require 'rails_helper'

RSpec.describe Person, type: :model do
  describe '#name' do 
    it 'should not valid if name is blank' do
      expect(build(:person, :blank_name)).to_not be_valid
    end
    
    it 'should not valid if name is null' do
      expect(build(:person, :null_name)).to_not be_valid
    end

    it 'should not valid if name is not unique' do
      expect(Person.create(name: "Pessoa 1", mass: 70, birth_year: "1976", url: 'https://swapi.co/api/people/1')).to be_valid
      expect(Person.create(name: "Pessoa 1", mass: 67, birth_year: "1987", url: 'https://swapi.co/api/people/1')).to_not be_valid
    end
  end

  describe '#mass' do 
    it 'should not valid if mass is null' do
      expect(build(:person, :without_mass)).to_not be_valid
    end
  end

  describe '#birth_year' do 
    it 'should not valid if birth_year is null' do
      expect(build(:person, :without_birth_year)).to_not be_valid
    end
  end

  describe '#specie_name' do 
    it 'should be blank if planet is null' do
      expect(build(:person, :without_specie).specie_name).to eql ""
    end

    it 'should not be blank if planet is not null' do
      expect(build(:person, :with_specie).specie_name).to_not eql ""
    end
  end

  describe '#planet_name' do 
    it 'should be blank if planet is null' do
      expect(build(:person, :without_planet).planet_name).to eql ""
    end

    it 'should not be blank if planet is not null' do
      expect(build(:person, :with_planet).planet_name).to_not eql ""
    end
  end
end
