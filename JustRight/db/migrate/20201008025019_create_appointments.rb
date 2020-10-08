class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.integer :id
      t.integer :jobPost_id
      t.string :start_time
      t.string :end_time
      t.string :location

      t.timestamps
    end
  end
end
