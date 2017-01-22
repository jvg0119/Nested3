module ApplicationHelper

	def flash_class(key)
		case
		when key == "success" then "success"
		when key == "notice" then "success"	
		when key == "info" then "info"
		when key == "warning" then "warning"
		when key == "alert" then "warning"
		when key == "danger" then "danger"	
		when key == "error" then "danger"	
		end
	end

	def current_user_admin?
		current_user.admin? if current_user
	end

end
