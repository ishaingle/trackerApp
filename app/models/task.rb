class Task < ApplicationRecord
  belongs_to :daily_status, optional: true
  belongs_to :user, optional: true
end
