class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_search
  
  def set_search
	#@search = Event.search(params[:q])
	@search = Event.ransack(params[:q]) #ransackメソッド推奨(コンフリクトさせないため)
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



