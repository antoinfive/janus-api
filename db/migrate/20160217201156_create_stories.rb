class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string :name
      t.string :description
      t.integer :points
      t.references :project, index: true, foreign_key: true
      t.string :state
      t.datetime :due_date

      t.timestamps null: false
    end
  end
end
