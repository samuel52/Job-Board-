class CreateSummaries < ActiveRecord::Migration[5.1]
  def change
    create_table :summaries do |t|
      t.string :company
      t.string :job_level
      t.string :specialize
      t.text :about
      t.string :qualification
      t.string :experience
      t.date :expiry
      t.references :job, foreign_key: true

      t.timestamps
    end
  end
end
