class Person < ApplicationRecord
  has_many :works, dependent: :destroy
  has_many :projects, through: :works
end
