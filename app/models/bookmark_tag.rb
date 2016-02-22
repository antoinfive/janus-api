class BookmarkTag < ActiveRecord::Base
  belongs_to :tag
  belongs_to :bookmark
  validates_presence_of :bookmark_id, :tag_id
end
