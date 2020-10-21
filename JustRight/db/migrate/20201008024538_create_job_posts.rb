class CreateJobPosts < ActiveRecord::Migration[6.0]
  def change
    create_table :job_posts do |t|
      t.integer :client_id
      t.string :job_type
      t.string :title
      t.string :description
      t.string :payrate

      t.timestamps
    end
  end
end
