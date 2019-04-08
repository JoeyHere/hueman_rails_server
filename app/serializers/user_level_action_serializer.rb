class UserLevelActionSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :level_id, :played, :completed, :favourited, :upvote, :downvote
end
