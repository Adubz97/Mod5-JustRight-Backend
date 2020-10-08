class CreateJobs < ActiveRecord::Migration[6.0]
  def change
    create_table :jobs do |t|
      t.integer :id
      t.string :subject

      t.timestamps
    end
  end
end
