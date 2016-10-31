class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.float :price
      t.string :description
      t.boolean :for_sale
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
