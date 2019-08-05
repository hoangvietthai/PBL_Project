class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.integer :job_id
      t.integer :company_id
      t.text :content
      t.date :create_at
      t.integer :student_id

      t.timestamps
    end
  end
end
