class UserSerializer < ActiveModel::Serializer
  attributes :id, :user_name, :completedLevelIds
end