class ApplicationController < ActionController::Base
  protect_from_forgery
#  include SessionsHelper
  before_filter :set_language

  private
  
  def set_language
    I18n.locale = 'ru'
  end
end
