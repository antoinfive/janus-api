class CreateBookmarkTags < ActiveRecord::Migration
  def change
    create_table :bookmark_tags do |t|
      t.references :tag, index: true, foreign_key: true
      t.references :bookmark, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
