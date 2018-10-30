class College < ApplicationRecord
    has_many :college_users
    has_many :users, through: :college_users
    accepts_nested_attributes_for :college_users
end