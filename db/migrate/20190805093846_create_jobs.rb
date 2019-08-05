class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.string :job_id
      t.string :integer
      t.integer :company_id
      t.date :dealine
      t.text :describe
      t.integer :salary
      t.text :capacity
      t.text :address

      t.timestamps
    end
  end
end
