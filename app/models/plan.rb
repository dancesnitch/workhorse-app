	class Plan
		PLANS = [:free, :premium]
		
	def self.options
		PLANS.map{ |plan| [plan.captialize,plan] }
	end
end