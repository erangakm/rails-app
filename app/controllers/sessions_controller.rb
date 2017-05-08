class SessionsController < ApplicationController
  def new
    # Convention over configuration. Ruby will actually pick sessions/new.html.erb
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)

    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to user
    else
      flash.now[:notice] = "You have entered an incorrect password."
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end
end
