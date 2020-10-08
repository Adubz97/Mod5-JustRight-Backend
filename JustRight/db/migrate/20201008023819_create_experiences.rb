class CreateExperiences < ActiveRecord::Migration[6.0]
  def change
    create_table :experiences do |t|
      t.integer :id
      t.integer :years_of_experience
      t.integer :caregiver_id
      t.integer :job_id

      t.timestamps
    end
  end
end
