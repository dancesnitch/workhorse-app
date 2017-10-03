class CreateTenantsUsersJoinTable < ActiveRecord::Migration[5.1]
  def change
    create_join_table :tenants, :users do |t|
      t.index [:tenant_id, :user_id]
      #t.index [:user_id, :tenant_id]
      #Added t.reference for tenant
      t.references :tenant, foreign_key: true
    end
  end
end
