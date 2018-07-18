class ApplicationController < ActionController::Base
  include Clearance::Controller
	UTM = %w(utm_source utm_medium utm_campaign utm_term)
	AVAILABLE_COUNTRY = ['en', 'id']

	before_action :set_locale
	 
	def set_locale
	  I18n.locale = params[:locale] || I18n.default_locale
	end
	def default_url_options
	  { locale: I18n.locale }
	end
	protected

	# Derive the model name from the controller. egs UsersController will return User
	def self.permission
		return name = controller_name.classify.constantize
	end
end
