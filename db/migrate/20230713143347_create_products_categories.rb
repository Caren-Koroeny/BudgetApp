class CreateProductsCategories < ActiveRecord::Migration[7.0] # rubocop:todo Style/Documentation
  def change
    create_join_table :products, :categories, &:timestamps
  end
end
