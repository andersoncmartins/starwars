class Planet < ApplicationRecord
  has_many :residents, class_name: 'People', foreign_key: "person_id"
  has_many :species

  validates :name, presence: true, uniqueness: true
end
