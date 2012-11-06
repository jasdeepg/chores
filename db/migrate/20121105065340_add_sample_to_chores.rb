class AddSampleToChores < ActiveRecord::Migration
  def change
    add_column :chores, :sample, :timestamp
  end
end
