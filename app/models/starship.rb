class Starship < ApplicationRecord
  has_and_belongs_to_many :people

  validates :name, presence: true, uniqueness: true

  def pilots
    people
  end
end
