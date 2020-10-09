class CreateOffers < ActiveRecord::Migration[6.0]
  def change
    create_table :offers do |t|
      t.integer :caregiver_id
      t.integer :job_post_id

      t.timestamps
    end
  end
end
