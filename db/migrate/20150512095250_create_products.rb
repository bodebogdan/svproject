class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.integer :width
      t.integer :height
      t.float :price
      t.text :description
      t.text :product_type

      t.timestamps null: false
    end
  end
end
