class User < ApplicationRecord
    has_secure_password
    has_many :levels
    has_many :user_level_actions, dependent: :destroy

   def completedLevelIds
        actions = self.user_level_actions.select{|action|  action.completed}
        return actions.map{ |ac| ac.level_id }
   end

end

