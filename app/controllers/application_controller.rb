class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :get_collections
  before_filter :set_user_language

  def get_collections
  	@collections = Collection.all
  end

  def set_user_language
  	I18n.locale = 'sv-SE'
  end

end
