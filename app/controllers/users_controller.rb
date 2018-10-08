class UsersController < ApplicationController
  def index  
    #それぞれのユーザーのトップページ
  	# @event = Event.find(params[:id])
   # 	@the_clubname = @event.user_id
   # 	@events = Event.where(user_id: @the_clubname).order('created_at desc')

  end

  def show
    # ユーザー情報取得
    @user = User.find(params[:id])
    if user_signed_in? 
    #マイページ
    @my_events = Event.where(user_id: current_user.id).order('created_at desc')
    # else
    end
    #それぞれのユーザーのトップページ
    @event = Event.find(params[:id])
  
    @the_clubname = @event.user_id
    # クリックしたユーザーの投稿したイベント一覧
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
