class LevelSerializer < ActiveModel::Serializer
  belongs_to :user
  attributes :id, :level_data, :user, :name, :plays, :completes
end
