class ApplicationController < ActionController::Base
  include Clearance::Controller

  def current_user
    super || Guest.new
  end
end
