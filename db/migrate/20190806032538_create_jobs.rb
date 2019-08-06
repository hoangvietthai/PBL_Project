class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|

      t.timestamps
      t.string :title
      t.integer :user_id
      t.integer :company_id
      t.date :deadline
      t.string :describe
      t.string :salary
      t.integer :typejob_id
      t.string :address
    end
  end
end
