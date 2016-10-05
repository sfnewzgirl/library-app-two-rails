class SessionsController < ApplicationController

  def new
    @member = Member.new
  end

  def create
    @member = Member.confirm(member_params)
    if @member
      login(@member)
      redirect_to @member
    else
      redirect_to login_path
    end
  end

  private
  def member_params
    params.require(:member).permit(:first_name, :last_name, :email, :password)
  end
end
