class Member < ApplicationRecord
  has_secure_password
  validates_uniqueness_of :email
  has_many :library_members, dependent: :destroy
  has_many :libraries, through: :library_members

  def self.confirm(params)
    @member = Member.find_by({email: params[:email]})
    @member ? @member.authenticate(params[:password]) :false
  end
end
