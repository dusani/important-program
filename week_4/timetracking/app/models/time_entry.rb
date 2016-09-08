class TimeEntry < ApplicationRecord
  belongs_to :project

  validates :hours, :minutes, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
