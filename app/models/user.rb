class User < ApplicationRecord
    has_secure_password
    has_many :levels
    has_many :user_level_actions, dependent: :destroy

    validates :user_name, uniqueness: { case_sensitive: false }
    validates :user_name, length: { minimum: 3}
    validates :user_name, length: { maximum: 30}

   def completedLevelIds
        actions = self.user_level_actions.select{|action|  action.completed}
        return actions.map{ |ac| ac.level_id }
   end

end

