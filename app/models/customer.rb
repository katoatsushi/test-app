class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :clips, dependent: :destroy

  # has_many :events, through: :clips

  def fetch_events_from_today_until(datetime)
    self.events.fetch_events_from_today_until(datetime)
  end
  # 以下、デバイスにストロングパラメータの追加
		# class Customer::ParameterSanitizer < Devise::ParameterSanitizer
		  
		#   def initialize(*)
		#     super
		#     permit(:sign_up, keys: [:name, :email, :introduce])
		#   end
		#   #  def sign_in
		#   #   default_params.permit(:name, :email,:password)
		#   # end

		# end

end
