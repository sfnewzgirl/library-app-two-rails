class LibraryMembersController < ApplicationController
  def index
    @member = Member.find(params[:member_id])
    @libraries = @member.libraries
  end
end
