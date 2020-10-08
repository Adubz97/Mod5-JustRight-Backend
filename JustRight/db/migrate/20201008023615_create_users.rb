class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.integer :id
      t.string :username
      t.string :password_digest
      t.string :address
      t.integer :phone
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.string :age
      t.string :email
      t.boolean :client

      t.timestamps
    end
  end
end
