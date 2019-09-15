class User < ApplicationRecord
    has_secure_password
    has_many :levels
    has_many :user_level_actions, dependent: :destroy

    validates :user_name, uniqueness: { case_sensitive: false }
    validates :user_name, length: { minimum: 3}
    validates :user_name, length: { maximum: 30}

    validates :email, uniqueness: { case_sensitive: false }
    validates :email, length: { minimum: 5}
    validates :email, length: { maximum: 50}
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP } 

   def completedLevelIds
        actions = self.user_level_actions.select{|action|  action.completed}
        return actions.map{ |ac| ac.level_id }
   end

end

