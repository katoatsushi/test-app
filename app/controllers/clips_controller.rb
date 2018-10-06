class ClipsController < ApplicationController
  def create
    # binding.pry
  	@customer_id = current_customer.id
  	@event_id = Event.find(params[:id]).id
  	@clip = Clip.new(customer_id: @customer_id,event_id: @event_id) 
    # binding.pry
  	if @clip.save
  		redirect_to  root_url
  	end
  end


  def destroy
  	@clip = Clip.find(params[:id])
  	@clip.destroy

  	if @clip.destroy
  		redirect_to root_url
  	end
  end

end
