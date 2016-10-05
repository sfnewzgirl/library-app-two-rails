class LibraryMembersController < ApplicationController
  def index
    @member = Member.find(params[:member_id])
    @libraries = @member.libraries
  end
  def create
    @library = Library.find(params[:library_id])
    @library.members.push(current_member)
    redirect_to current_member
  end
end
