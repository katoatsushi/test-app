class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  #add_flash_types :success, :info, :warning, :danger

  # before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_search

  # def configure_permitted_parameters
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:clubname,:clubtype])
  #   # devise_parameter_sanitizer.permit(:sign_up, keys: [:clubtype])
  #   # devise_parameter_sanitizer.for(:sign_up) << :name
  #   # devise_parameter_sanitizer.for(:account_update) << :profile_image
  # end

  def set_search
	#@search = Event.search(params[:q])
	@search = Event.ransack(params[:q]) #ransackメソッド推奨(コンフリクトさせな)
	@search_events = @search.result.page(params[:page])
  end

  protected

  def devise_parameter_sanitizer
  	if resource_class == Customer
  		Customer::ParameterSanitizer.new(Customer, :customer, params)
  	elsif resource_class == User
  		User::ParameterSanitizer.new(User, :user, params)
  	else
  		super # Use the default one
    end
  end

end




