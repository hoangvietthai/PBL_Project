class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|

      t.timestamps
      t.integer :job_id
      t.integer :student_id
      t.integer :status
    end
  end
end
