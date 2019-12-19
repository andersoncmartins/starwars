class Specie < ApplicationRecord
  belong_to :planet
  has_many :people

  
end
