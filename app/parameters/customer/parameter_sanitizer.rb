# 以下、デバイスにストロングパラメータの追加
class Customer::ParameterSanitizer < Devise::ParameterSanitizer
		  
	def initialize(*)
	super
		permit(:sign_up, keys: [:name, :email, :introduce])
	end

end