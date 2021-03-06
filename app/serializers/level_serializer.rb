class LevelSerializer < ActiveModel::Serializer
  belongs_to :user
  attributes :id, :level_data, :user, :name, :plays, :completes, :created_at, :updated_at, :published, :upvotes, :downvotes
  
  class UserSerializer < ActiveModel::Serializer
    attributes :id, :user_name
  end
  
end
