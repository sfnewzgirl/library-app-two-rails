class MembersController < ApplicationController

  def index
    @members = Member.all
  end

  def new
    @member = Member.new
  end

  def create
    member = Member.new(member_params)
    if member.save
      login(member)
      redirect_to member_path
    else
      flash[:error] = "Incorrect email or password."
      redirect_to new_member_path
    end
  end

  def show
    @member = Member.find_by_id(params[:id])
  end

  private
  def member_params
    params.require(:member).permit(:first_name, :last_name, :email, :password)
  end
end
