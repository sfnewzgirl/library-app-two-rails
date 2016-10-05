module MembersHelper

  def login(member)
    session[:member_id] = member.id
    @current_member = member
  end

end
