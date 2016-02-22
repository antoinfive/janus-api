class BookmarkSerializer < ActiveModel::Serializer
  attributes :id, :link, :title, :jankiness, :project_ids
end
