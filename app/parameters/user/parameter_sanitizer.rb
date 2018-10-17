class User::ParameterSanitizer < Devise::ParameterSanitizer	  
	def initialize(*)
		super
        # 新規登録時のパラメーター
		permit(:sign_up, keys: [:clubname, :clubtype, :text, :population, :profile_img ])
        # ユーザー情報アップデート時のパラメーター
        permit(:account_update, keys: [:clubname, :clubtype, :text, :population, :profile_img, :what_we_do, :how_often_we_do, :where_we_do, :atmosphere, :annual_events, :contact_address1, :contact_address2])
	end
end