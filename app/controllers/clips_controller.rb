class ClipsController < ApplicationController
  def create
  	@customer_id = current_customer.id
  	@event_id = Event.find(params[:id]).id
  	@clip = Clip.new(customer_id: @customer_id,event_id: @event_id) 
  	if @clip.save
　　　 redirect_to root_url
      flash[:notice] = 'クリップに成功しました！'
  	# 	# redirect_to  root_url
  	end
  end

  def destroy

    # @the_clip = Clip.find(params[:id])
    @event = Event.find(params[:id])
    @clip =  Clip.find_by(customer_id: current_customer.id, event_id: @event.id)
  	@clip.destroy
  	if @clip.destroy
      flash[:notice] = 'クリップを削除しました'
  		redirect_to root_url
  	end
  end

end
