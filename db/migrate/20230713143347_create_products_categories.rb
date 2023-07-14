# frozen_string_literal: true

class CreateProductsCategories < ActiveRecord::Migration[7.0]
  def change
    create_join_table :products, :categories, &:timestamps
  end
end
