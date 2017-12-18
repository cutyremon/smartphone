class LoginsController < ApplicationController
	skip_before_action :require_login , only: [:new, :create]
  def new
  end
  def create 
    user = User.find_by name: params[:session][:name].downcase
    if user && user.authenticate(params[:session][:password])
    	flash[:success]="login success"
    	log_in user
    	redirect_to user
      #TODO save user infor into session
    else
      flash[:danger] = "Invalid email/password combination"
      render :new
    end
  end
  def destroy
  	log_out
  	flash[:success]="you are logged out"
  	redirect_to login_path
  end
end
