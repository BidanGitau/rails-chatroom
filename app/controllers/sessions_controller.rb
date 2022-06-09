class SessionsController < ApplicationController
before_action :logged_in_redirect , only: [:new,:create]

  def new
  end

  def create
  user=User.find_by(username:params[:session][:username])
  if user && user.authenticate(params[:session][:password])
    session[:user_id]=user.id
    flash[:notice]="You logged in success"
    redirect_to root_path
  else

    flash[:now]="Enter full details"
      render 'new'
  end
  end

  def destroy
    session[:user_id]=nil
    flash[:error]="You were logged out"
    redirect_to root_path, status: :see_other
  end
 private
 def logged_in_redirect
   if logged_in?
     flash[:error]="your already logged in"
     redirect_to root_path
 end
end
end
