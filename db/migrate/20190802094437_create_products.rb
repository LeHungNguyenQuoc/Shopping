class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.text :name, null: false
      t.integer :category_id, index: true, null: false
      t.integer :price
      t.text :description, null: false

      t.timestamps
    end
  end
end
