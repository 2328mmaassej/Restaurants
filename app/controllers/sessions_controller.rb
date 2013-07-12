class SessionsController < ApplicationController

def new
end

def create
	@user = User.find_by_name(params[:username])

	if @user.present?
		session[:user_id] = @user.id
		redirect_to restaurants_url, :notice => "You are logged in as #{@user.name}"
	else
		redirect_to '/sessions/new', :notice => "yeah right"
	end
end

def destroy
  reset_session
  redirect_to home_url
end

end
