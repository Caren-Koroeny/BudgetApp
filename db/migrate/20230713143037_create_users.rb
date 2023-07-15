class CreateUsers < ActiveRecord::Migration[7.0] # rubocop:todo Style/Documentation
  def change
    create_table :users do |t|
      t.string :name, null: false, default: ''

      t.timestamps
    end
  end
end
