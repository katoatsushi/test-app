class CustomersController < ApplicationController
  def show
# 　# マイページ
#   @current_customer = customer_signed_in?
  @customer = current_customer
  @clips = Clips.where(customer_id: current_customer.id).all
  # @my_clips = Clip.where(user_id: current_user.id).all
  end

  def show
  end

  def edit
    
  end

  def update
    
    # @club.update
    # @club.update_attributes(params)
  end
  
  def register_or_session
  end

end
