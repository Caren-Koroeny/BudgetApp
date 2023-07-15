class Category < ApplicationRecord # rubocop:todo Style/Documentation
  belongs_to :author, class_name: 'User'
  has_and_belongs_to_many :products

  validates :name, presence: true
  validates :amount, numericality: { greater_than_or_equal_to: 0 }
end
