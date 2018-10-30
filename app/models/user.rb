class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :events, dependent: :destroy

  mount_uploader :profile_img, PictureUploader
  mount_uploader :contact_address1, PictureUploader
  mount_uploader :contact_address2, PictureUploader
  
  # 正解
  has_many :college_users
  has_many :colleges, through: :college_users


  def fetch_events_from_today_until(datetime)
     self.events.fetch_events_from_today_until(datetime)
  end


  # def whole_colleges
  #   @@colleges = College.all
  # end

  # @colleges = College.all

  # def whole_colleges
  #   @colleges = College.all
  # end

  #編集の時パスワード入れずに更新できるようにする
def update_without_current_password(params, *options)
  params.delete(:current_password)
  if params[:password].blank? && params[:password_confirmation].blank?
    params.delete(:password)
    params.delete(:password_confirmation)
  end
  result = update_attributes(params, *options)
  clean_up_passwords
  result
end
# # emailを入力しなくても編集可能にしたい
# 自信ない
            def update_without_current_email(params, *options)
              params.delete(:current_email)
              if params[:email].blank? 
                params.delete(:email)
              end
              result = update_attributes(params, *options)
              # clean_up_emails
              result
            end


  # 以下、デバイスにストロングパラメータの追加
  # class User::ParameterSanitizer < Devise::ParameterSanitizer
		  
		#   def initialize(*)
		#     super
  #       # 新規登録時のパラメーター
		#     permit(:sign_up, keys: [:clubname, :clubtype, :text, :population, :profile_img ])
  #       # ユーザー情報アップデート時のパラメーター
  #       permit(:account_update, keys: [:clubname, :clubtype, :text, :population, :profile_img, :what_we_do, :how_often_we_do, :where_we_do, :atmosphere, :annual_events, :contact_address1, :contact_address2])
		#   end
  # end
  
end
