class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :events, dependent: :destroy
  # has_many :clips, dependent: :destroy #この行を追記することで関連付くイベントが削除されるとclipも削除されます。
  # has_many :events, through: :clips
  attachment :profile_image

  def fetch_events_from_today_until(datetime)
     self.events.fetch_events_from_today_until(datetime)
  end
  # 以下、デバイスにストロングパラメータの追加
  class User::ParameterSanitizer < Devise::ParameterSanitizer
		  
		  def initialize(*)
		    super
		    permit(:sign_up, keys: [:clubname, :clubtype])
		  end
  end
  

end
