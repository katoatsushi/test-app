class CustomersController < ApplicationController
  def show
    #マイページ

    # 期限が３日前のイベントを取得
    @events_in_3days = Event.where(when: (DateTime.now)..(DateTime.now+3.days))

    # クリップしたイベントで３日前のイベントを取得
    # @events_in_3days.each do |event|
    
    #   @clips_in_3days = Clip.where(event_id:  event.id)

        # if @clips_in_3days.nil?
        # else
        #   @clips_in_3days.each do |clip|
        #     @cliped_event_in_3days = Event.find(clip.event.id)
        #       flash[:notice] = "#{@cliped_event_in_3days.eventname}は３日後に開催されます"
        #   end
        # end
    # end
    # @clips_in_3days = Clip.where(event_id:  event.id).all

    # 自分がクリップしたイベントを取得
    @clips = Clip.where(customer_id: current_customer.id).all

  end

  # # イベントをいいねする
  # def iine(customer)
  #   clips.create(customer_id: customer.id)
  # end
  # # イベントのいいねを解除する（
  # def uniine(customer)
  #   clips.find_by(customer_id: customer.id).destroy
  # end

  def edit
  end

  def update
  end
  
  def register_or_session
  end

  def customer_how_to_use
  end

end
