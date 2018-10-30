class User::ParameterSanitizer < Devise::ParameterSanitizer	  
	def initialize(*)
		super
        # 新規登録時のパラメーター
		permit(:sign_up, keys: [:clubname, :clubtype, :text, :population, :profile_img , {:college_ids => []} ])   
        # ユーザー情報アップデート時のパラメーター
        permit(:account_update, keys: [:clubname, :clubtype, :text, :population, :profile_img, :what_we_do, :how_often_we_do, :where_we_do, :atmosphere, :annual_events, :contact_address1, :contact_address2])
	end
end
# {:college_ids => []}
# user_colleges: [college_ids:[]] 
# colleges: []