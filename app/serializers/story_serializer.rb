class StorySerializer < ActiveModel::Serializer
  embed :id, include: true
  attributes :id, :name, :description, :points, :state, :due_date, :completion_date
end
