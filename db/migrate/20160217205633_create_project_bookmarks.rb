class CreateProjectBookmarks < ActiveRecord::Migration
  def change
    create_table :project_bookmarks do |t|
      t.references :project, index: true, foreign_key: true
      t.references :bookmark, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
