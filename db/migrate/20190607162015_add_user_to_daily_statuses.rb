class AddUserToDailyStatuses < ActiveRecord::Migration[5.2]
  def change
    add_reference :daily_statuses, :user, foreign_key: true
  end
end
