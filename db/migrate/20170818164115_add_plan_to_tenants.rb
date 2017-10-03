class AddPlanToTenants < ActiveRecord::Migration[5.1]
  def change
    add_column :tenants, :plan, :string
    #Added t.reference for tenant
    t.references :tenant, foreign_key: true
  end
end
