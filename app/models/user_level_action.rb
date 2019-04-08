class UserLevelAction < ApplicationRecord
    belongs_to :user
    belongs_to :level
end
