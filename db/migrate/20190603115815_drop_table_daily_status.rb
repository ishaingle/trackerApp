class DropTableDailyStatus < ActiveRecord::Migration[5.2]
  def change
  	drop_table :daily_statuses
  end
end
