class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|

      t.timestamps
      t.integer :job_id
      t.integer :user_id
      t.string :content
    end
  end
end
