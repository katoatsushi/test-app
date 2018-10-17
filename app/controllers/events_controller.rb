class EventsController < ApplicationController
  before_action :move_to_index, except: :index

  def index
   @events = Event.all.order("id DESC")
   # ３日以内に開催されるイベント
   @events_in_3_days = Event.where(when: (DateTime.now)..(DateTime.now+3.days))
   
   # # クリックされたイベントとそうでないイベントを区別する
   # @event = Event.find(params[:id])
   # @clip = Clip.find_by(event_id:  @event.id)
  
  end

  def show
    @event = Event.find(params[:id])
    @user = @event.user_id
  end

  def new
  	@event = Event.new
  end

  def destroy
    event = Event.find(params[:id])
    event.destroy
    redirect_to root_path
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    if @event.user_id == current_user.id
      @event.update_attributes(event_params)
    end
    flash.now[:error] = "編集が完了しました"
  end

  def create
    Event.create(eventname: event_params[:eventname], when: event_params[:when], where: event_params[:where], cost: event_params[:cost], text: event_params[:text], picture: event_params[:picture], picture2: event_params[:picture2], user_id: current_user.id)
    flash.now[:error] = "投稿に成功しました！"
  end

  def search
  end

  private
       def event_params
       	params.require(:event).permit(:eventname, :when, :where, :cost, :text, :picture, :picture2 , user_id: current_user.id)
       end
       #form_tagの場合は上記のrequire(:event)はいらない、
       #form_forはモデルに元ずいてハッシュを作るので、１回eventモデルを呼び出す必要があった。

      def move_to_index
        redirect_to action: :index unless user_signed_in?
      end
    
end