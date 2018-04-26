class AddCountryIdToJobs < ActiveRecord::Migration[5.1]
  def change
    add_column :jobs, :country_id, :integer
  end
end
