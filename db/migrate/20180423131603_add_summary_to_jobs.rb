class AddSummaryToJobs < ActiveRecord::Migration[5.1]
  def change
  	add_column :jobs, :company, :string
  	add_column :jobs, :job_level, :string
  	add_column :jobs, :specialize, :string
  	add_column :jobs, :about, :text
  	add_column :jobs, :qualification, :string
  	add_column :jobs, :experience, :integer
  	add_column :jobs, :expiry, :date
  end
end
