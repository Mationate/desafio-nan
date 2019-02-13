class Person < ApplicationRecord
  has_many :works, dependent: :destroy
  has_many :proyects, through: :works
end
