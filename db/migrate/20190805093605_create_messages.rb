class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.integer :job_id
      t.integer :company_id
      t.text :content
      t.string :create_at
      t.string :date
      t.integer :student_id

      t.timestamps
    end
  end
end
