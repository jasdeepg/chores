class AddTestTimeToChores < ActiveRecord::Migration
  def change
    add_column :chores, :testTime, :datetime
  end
end
