class SessionsController < ApplicationController

  def new
    @member = Member.new
  end
end
