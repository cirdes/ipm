module ApplicationHelper
	def nav_class(current_tab, tab, options = "")
		options += (current_tab == tab) ? ' active' : ' inactive'
		options
	end
end
