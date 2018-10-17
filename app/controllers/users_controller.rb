class UsersController < ApplicationController
  def index 
    user_id = current_user.id 
    @my_events = Event.where(user_id: current_user.id).order('created_at desc')
  end

  def show
    # ユーザー情報取得
    # @event = Event.find(params[:id])
    @event = Event.find_by(user_id: params[:id])
    if user_signed_in? 
    #マイページ
    @my_events = Event.where(user_id: current_user.id).order('created_at desc')
    end
    #それぞれのユーザーのトップページ
    # クリックしたユーザーの投稿したイベント一覧
    @events = Event.where(user_id: params[:id]).order('created_at desc')

  end

  def edit
    @club = current_user
  end
  
  def update
    @club = current_user.id
  end
  
  def register_or_session
  end

  def user_how_to_use
  end

end
