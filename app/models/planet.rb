class Planet < ApplicationRecord
  has_many :residents, class_name: 'Person'

  validates :name, presence: true, uniqueness: true
end
