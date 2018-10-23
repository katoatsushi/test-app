class CustomersController < ApplicationController
  def show
    #マイページ

    # 期限が３日前のイベントを取得
    # @events_in_3days = Event.where(when: (DateTime.now)..(DateTime.now+3.days))
    # クリップしたイベントで３日前のイベントを取得
    @cliped_event_in_3days = current_customer.events.where(when: DateTime.now..DateTime.now+3.days)  
    # binding.pry
    @cliped_event_in_3days.each do |event|
      flash[:notice] = "#{event.eventname}は３日後に開催されます"
    end
    # クリップしたイベントで３日前のイベントを取得
  
    # 自分がクリップしたイベントを取得
    @clips = Clip.where(customer_id: current_customer.id).all

  end


  def edit
  end

  def update
  end
  
  def register_or_session
  end

  def customer_how_to_use
  end

end
