class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper
  def index
    @profiles = Profile.all
  end
end
