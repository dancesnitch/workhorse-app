class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :description
      t.date :expected_completion_date
      t.belongs_to :tenant, foreign_key: true
      #Added t.reference for tenant
      t.references :tenant, foreign_key: true
      t.timestamps
    end
  end
end
