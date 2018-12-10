class Student < ApplicationRecord
  has_and_belongs_to_many :sections
  validates :name,  presence: true, length: { maximum: 55 }, uniqueness: true
  validates :number, presence: true, length: {is: 9}, uniqueness: true
end
