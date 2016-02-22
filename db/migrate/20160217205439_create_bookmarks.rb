class CreateBookmarks < ActiveRecord::Migration
  def change
    create_table :bookmarks do |t|
      t.string :link
      t.string :title

      t.timestamps null: false
    end
  end
end
