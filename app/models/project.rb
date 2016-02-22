class Project < ActiveRecord::Base
  belongs_to :user
  has_many :stories, dependent: :destroy
  has_many :snippets, dependent: :destroy
  has_many :project_bookmarks, dependent: :destroy
  has_many :bookmarks, through: :project_bookmarks, dependent: :destroy
  validate :valid_state?

  private
  def valid_state?
    JanusApi::PROJECT_STATE.include?(self.state)
  end
end
