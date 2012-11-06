class AddTimeStartToChores < ActiveRecord::Migration
  def change
    add_column :chores, :timeStart, :time
  end
end
