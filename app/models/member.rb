class Member < ApplicationRecord
  has_secure_password
  validates_uniqueness_of :email

  def self.confirm(params)
    @member = Member.find_by({email: params[:email]})
    @member ? @member.authenticate(params[:password]) :false
  end
end
