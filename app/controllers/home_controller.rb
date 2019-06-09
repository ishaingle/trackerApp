class HomeController < ApplicationController
    before_action :authenticate_user!
    before_action :set_current_user

	def index
	end

	def set_current_user
      @user = User.find_by(email: current_user.email)
    end  

end
