class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :address
      t.string :phone
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.string :age
      t.string :email
      t.string :image
      t.boolean :client
      t.boolean :tutor
      t.boolean :babysitter
      t.integer :years_of_experience

      t.timestamps
    end
  end
end
