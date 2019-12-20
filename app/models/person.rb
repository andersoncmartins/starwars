class Person < ApplicationRecord
  belongs_to :planet, optional: true
  belongs_to :specie, optional: true
  has_and_belongs_to_many :starships

  validates_presence_of :name, :mass, :birth_year
  validates :name, uniqueness: true

  def specie_name
    specie ? specie.name : ''
  end

  def planet_name
    planet ? planet.name : ''
  end
end
