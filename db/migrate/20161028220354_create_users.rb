class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :name
      t.string :password_digest
      t.string :date_of_birth
      t.boolean :gender
      t.boolean :admin
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
