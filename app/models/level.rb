class Level < ApplicationRecord
    belongs_to :user
    has_many :user_level_actions
end
