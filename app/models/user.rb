class User < ApplicationRecord
    has_secure_password
    has_many :levels
    has_many :user_level_actions
end
