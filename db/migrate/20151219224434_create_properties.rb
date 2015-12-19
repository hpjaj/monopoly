class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :name
      t.references :player, index: true, foreign_key: true
      t.string :color_group
      t.integer :purchase_price
      t.integer :mortgage_value

      t.timestamps null: false
    end
  end
end
