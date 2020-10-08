class CreateJobPosts < ActiveRecord::Migration[6.0]
  def change
    create_table :job_posts do |t|
      t.integer :id
      t.integer :client_id
      t.integer :job_id
      t.string :title
      t.string :description
      t.string :payrate

      t.timestamps
    end
  end
end
