class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.integer :contact_id
      t.integer :job_id
      t.integer :student_id
      t.integer :state

      t.timestamps
    end
  end
end
