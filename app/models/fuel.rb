class Fuel < ApplicationRecord
    
    has_many :user_fuels
    has_many :users, through: :user_fuels
end
