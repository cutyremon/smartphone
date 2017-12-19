class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception
	include LoginsHelper
	before_action :require_login
	def require_login
		unless logged_in?
			redirect_to login_path
		end 
	end
	def authenticate_user!
		if user_signed_in?
			super 
		else
			redirect_to your_path, notice: "Please Login to view that page!"
		end
	end
end
