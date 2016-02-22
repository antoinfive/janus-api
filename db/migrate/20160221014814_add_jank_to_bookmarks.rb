class AddJankToBookmarks < ActiveRecord::Migration
  def change
    add_column :bookmarks, :jankiness, :string
  end
end
