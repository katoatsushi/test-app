class ClipsController < ApplicationController
  def create
  	@customer_id = current_customer.id
  	@event_id = Event.find(params[:id]).id
  	@clip = Clip.new(customer_id: @customer_id,event_id: @event_id) 
  	if @clip.save
       flash[:notice] = 'クリップに成功しました！'
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
