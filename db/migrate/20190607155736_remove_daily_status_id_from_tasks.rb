class RemoveDailyStatusIdFromTasks < ActiveRecord::Migration[5.2]
  def change
    remove_column :tasks, :daily_status_id, :integer
  end
end
