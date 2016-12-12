class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(password: params[:session][:password])
      # Log the user in and redirect to the user's show page
    else
      # create error message
    flash.now[:danger] = 'Invalid email/password combination' 
    render 'new'
    end
  end

  def destroy
    #code
  end
end
