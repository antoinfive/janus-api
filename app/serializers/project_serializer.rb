class ProjectSerializer < ActiveModel::Serializer
  embed :ids, include: true
  attributes :id, :name, :github_link, :state, :description
  has_many :stories, :bookmarks
  has_many :snippets, each_serializer: SnippetLightSerializer
  has_one :user
end
