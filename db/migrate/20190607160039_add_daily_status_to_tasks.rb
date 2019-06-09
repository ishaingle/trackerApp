class AddDailyStatusToTasks < ActiveRecord::Migration[5.2]
  def change
    add_reference :tasks, :daily_status, foreign_key: true
  end
end
