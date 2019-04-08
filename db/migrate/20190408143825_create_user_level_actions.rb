class CreateUserLevelActions < ActiveRecord::Migration[5.2]
  def change
    create_table :user_level_actions do |t|
      t.integer :user_id
      t.integer :level_id
      t.boolean :played
      t.boolean :completed
      t.boolean :favourited
      t.boolean :upvote
      t.boolean :downvote

      t.timestamps
    end
  end
end
