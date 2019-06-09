class CreateDailyStatuses < ActiveRecord::Migration[5.2]
  def change
    create_table :daily_statuses do |t|
      t.date :date
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps
    end
  end
end
