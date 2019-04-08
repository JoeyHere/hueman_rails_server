class ChangePlayedToIntegerInUserLevelActions < ActiveRecord::Migration[5.2]
  def change
    change_column :user_level_actions, :played, :integer
  end
end
