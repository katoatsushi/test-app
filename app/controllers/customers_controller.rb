class CustomersController < ApplicationController
  def show
# 　# マイページ
#   @current_customer = customer_signed_in?
   @clips = Clip.where(customer_id: current_customer.id).all
  # @my_clips = Clip.where(user_id: current_user.id).all
  # from = DateTime.now
  # to = DateTime.now + 3.day
  # @clips_in_3_day = Clip.where(when BETWEEN from AND to)
   # @clips_in_3_day = Clip.where(when: [Time.now..3.days.after])
   # @clips_in_3_day = Clip.where(:when=> Time.now..3.days.after)

   to    = (DateTime.now + 3.day)
   @events_in_3_day = Event.fetch_events_from_today_until(to)
   # @cliped_event_bases = Clip.where(clip_id: @clips.event_id)

  end

  def edit
    
  end

  def update
    
    # @club.update
    # @club.update_attributes(params)
  end
  
  def register_or_session
  end

  def customer_how_to_use
  end

end
