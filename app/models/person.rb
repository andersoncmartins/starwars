class Person < ApplicationRecord
  belongs_to :planet
  belongs_to :specie
  has_and_belongs_to_many :starships

  validates_presence_of :name, :mass
end
