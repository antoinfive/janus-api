class ProjectBookmark < ActiveRecord::Base
  belongs_to :project
  belongs_to :bookmark
  validates_presence_of :bookmark_id, :project_id
end
