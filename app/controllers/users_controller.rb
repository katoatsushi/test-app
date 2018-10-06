class UsersController < ApplicationController
  def index  
    #それぞれのユーザーのトップページ
  	@event = Event.find(params[:id])
   	@the_clubname = @event.user_id
   	@events = Event.where(user_id: @the_clubname).order('created_at desc')

  end

  def show
    #マイページ
    @clubname = current_user.clubname
    @my_events = Event.where(user_id: current_user.id).order('created_at desc')
    # @my_clips = Clip.where(user_id: current_user.id).all


    #それぞれのユーザーのトップページ
    @event = Event.find(params[:id])
    @the_clubname = @event.user_id
    @events = Event.where(user_id: @the_clubname).order('created_at desc')

    # to    = (DateTime.now + 3.day)
    # @events_in_3days = Event.fetch_events_from_today_until(to)
  end

  def edit
    @club = current_user
  end

  
  def update
    @club = current_user.id
    # @club.update
    # @club.update_attributes(params)
  end
  
  def register_or_session
  end

end
