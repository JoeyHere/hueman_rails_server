class AddingDownVoteAndUpvoteCountToLevels < ActiveRecord::Migration[5.2]
  def change
    add_column :levels, :upvotes, :integer
    add_column :levels, :downvotes, :integer
  end
end
