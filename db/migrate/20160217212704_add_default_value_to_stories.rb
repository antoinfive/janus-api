class AddDefaultValueToStories < ActiveRecord::Migration
  def change
    change_column :stories, :state, :string, default: "icebox"
  end
end
