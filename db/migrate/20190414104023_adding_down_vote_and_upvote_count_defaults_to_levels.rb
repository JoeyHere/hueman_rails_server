class AddingDownVoteAndUpvoteCountDefaultsToLevels < ActiveRecord::Migration[5.2]
  def change
    change_column :levels, :upvotes, :integer, :default => 0 
    change_column :levels, :downvotes, :integer, :default => 0 
  end
end
