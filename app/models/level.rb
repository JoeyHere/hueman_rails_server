class Level < ApplicationRecord
    belongs_to :user
    has_many :user_level_actions, dependent: :destroy

    validates :name, length: { minimum: 3}
    validates :name, length: { maximum: 30}
end
