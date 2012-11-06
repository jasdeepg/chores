class AddperiodStartToChore < ActiveRecord::Migration
  def change
    add_column :chores, :periodStart, :date
  end
end
