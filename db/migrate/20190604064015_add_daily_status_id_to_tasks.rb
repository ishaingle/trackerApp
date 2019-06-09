class AddDailyStatusIdToTasks < ActiveRecord::Migration[5.2]
  def change
    add_column :tasks, :daily_status_id, :integer
  end
end
