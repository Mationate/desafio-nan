class Proyect < ApplicationRecord
  has_many :works, dependent: :destroy
  has_many :people, through: :works
end
