class Level < ApplicationRecord
    belongs_to :user
    has_many :user_level_actions

    # def completed(userId) 
    #     @user = User.find_by(id: userId)
    #     completed = @user.user_level_actions.select(|action| 
    #         {
    #            if action.completed && action.level_id == self.id
    #                 return true
    #             else 
    #                return false
    #             end
    #         }
    #         )
    #     end
    # end


end
