class DailyStatus < ApplicationRecord
	has_many :tasks, dependent: :destroy
end
