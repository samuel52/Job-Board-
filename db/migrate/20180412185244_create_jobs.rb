class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.string :title
      t.text :description
      t.string :location
      t.text :job_benefits
      t.text :job_task
      t.string :job_link
      t.string :job_salary
      t.string :job_type

      t.timestamps
    end
  end
end
