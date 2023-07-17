class CreateProducts < ActiveRecord::Migration[7.0] # rubocop:todo Style/Documentation
  def change
    create_table :products do |t|
      t.string :name, null: false, default: ''
      t.references :author, null: false, foreign_key: { to_table: :users }
      t.string :icon, null: false, default: ''

      t.timestamps
    end
  end
end
