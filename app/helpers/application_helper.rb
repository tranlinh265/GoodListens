module ApplicationHelper
	def is_active?(page_name)
		print "___"+params[:controller]+"___"
  		"active" if params[:controller] == page_name
	end
end
