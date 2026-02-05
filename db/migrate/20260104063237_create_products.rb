class CreateProducts < ActiveRecord::Migration[8.1]
  def change
    create_table :products do |t|
      t.string :title
      t.integer :price
      t.string :imgUrl

      t.timestamps
    end
  end
end
