class HomeController < ApplicationController
  skip_before_action :authenticate_tenant!, :only => [ :index ]

  def index
  	if current_user
  		if sessin[:tenant_id]
  			Tenant.set_current_tenant session[:tenant_id]
  		else
  			Tenant.set_current_tenant current_user.tenant.first
  		end

  		@tenant = Tenant.current_tenant
  		params[:tenant_id] = @tenant.id

      @project = Project.by_plan_and_tenant(@tenant_id)
  	end
  end
end
