class Starship < ApplicationRecord
  has_and_belongs_to_many :pilots, class_name: 'Person'

  validates :name, presence: true, uniqueness: true
end
