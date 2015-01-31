module ApplicationHelper
	def applied_colleges
		@colleges = []
		College.each do |var|
			@colleges << var.name
		end
		@colleges
	end
end
