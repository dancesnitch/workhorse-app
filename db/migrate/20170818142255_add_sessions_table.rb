class AddSessionsTable < ActiveRecord::Migration[5.1]
  def change
    create_table :sessions do |t|
      t.string :session_id, :null => false
      t.text :data
      t.timestamps
    end

    add_index :sessions, :session_id, :unique => true
    add_index :sessions, :updated_at
    #Added t.reference for tenant
    t.references :tenant, foreign_key: true
  end
end
