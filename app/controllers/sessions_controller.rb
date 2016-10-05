class SessionsController < ApplicationController

  def new
    @member = Member.new
  end

  def create
    @member = Member.confirm(member_params)
    if @member
      login(@member)
      flash[:success] = "You're logged in!"
      redirect_to @member
    else
      flash[:error] = "Please try again."
      redirect_to login_path
    end
  end

  def destroy
    logout
    flash[:success] = "You're logged out!"
    redirect_to root_path
  end

  private
  def member_params
    params.require(:member).permit(:first_name, :last_name, :email, :password)
  end
end
