class AddDefaultValueToProjects < ActiveRecord::Migration
  def change
    change_column :projects, :state, :string, default: "incomplete"
  end
end
