class CreateSnippets < ActiveRecord::Migration
  def change
    create_table :snippets do |t|
      t.text :code
      t.references :user, index: true, foreign_key: true
      t.references :project, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
