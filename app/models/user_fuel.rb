class UserFuel < ApplicationRecord
  belongs_to :user
  belongs_to :fuel
end
