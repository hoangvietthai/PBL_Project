class CreateTypejobs < ActiveRecord::Migration[5.2]
  def change
    create_table :typejobs do |t|

      t.timestamps
      t.string :name_job
    end
  end
end
