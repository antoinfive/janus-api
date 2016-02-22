class Tag < ActiveRecord::Base
  has_many :bookmark_tags, dependent: :destroy
  has_many :bookmarks, through: :bookmark_tags
  validates_presence_of :name

end
