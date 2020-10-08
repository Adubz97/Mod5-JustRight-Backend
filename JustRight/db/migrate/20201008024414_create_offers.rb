class CreateOffers < ActiveRecord::Migration[6.0]
  def change
    create_table :offers do |t|
      t.integer :id
      t.integer :caregiver_id
      t.integer :jobPost_id

      t.timestamps
    end
  end
end
