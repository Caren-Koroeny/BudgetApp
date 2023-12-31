class CreateCategories < ActiveRecord::Migration[7.0] # rubocop:todo Style/Documentation
  def change
    create_table :categories do |t|
      t.string :name, null: false, default: ''
      t.references :author, null: false, foreign_key: { to_table: :users }
      t.decimal :amount, default: 0

      t.timestamps
    end
  end
end
