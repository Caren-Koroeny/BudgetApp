# Documentation for the Product class.
class Product < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_and_belongs_to_many :categories

  validates :name, presence: true
  validates :icon, presence: true
end
