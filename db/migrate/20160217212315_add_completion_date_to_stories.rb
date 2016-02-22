class AddCompletionDateToStories < ActiveRecord::Migration
  def change
    add_column :stories, :completion_date, :datetime
  end
end
