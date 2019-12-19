class Specie < ApplicationRecord
  belongs_to :planet, optional: true
  has_many :people

  validates :name, presence: true, uniqueness: true
end
