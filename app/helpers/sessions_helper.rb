module SessionsHelper

  def login(member)
    session[:member_id] = member.id
    @current_member = member
  end

  def current_member
    @current_member ||= Member.find_by_id(session[:member_id])
  end
end
