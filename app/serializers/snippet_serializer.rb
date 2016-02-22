class SnippetSerializer < ActiveModel::Serializer
  embed :ids, include: true
  attributes :id, :code
  has_one :project
end
