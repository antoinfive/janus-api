class UserSerializer < ActiveModel::Serializer
  embed :ids, include: true
  attributes :id, :username, :email
  has_many :projects, each_serializer: ProjectsLightSerializer
  has_many :bookmarks
  has_many :snippets, each_serializer: SnippetLightSerializer
end
