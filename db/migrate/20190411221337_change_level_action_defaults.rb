class ChangeLevelActionDefaults < ActiveRecord::Migration[5.2]
  def change
      change_column :user_level_actions, :completed, :boolean, :default => 0 
      change_column :user_level_actions, :played, :integer, :default => 0 
      change_column :user_level_actions, :favourited, :boolean, :default => 0 
      change_column :user_level_actions, :upvote, :boolean, :default => 0 
      change_column :user_level_actions, :downvote, :boolean, :default => 0 
  end
end

