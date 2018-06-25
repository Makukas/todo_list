class List < ApplicationRecord
# checks if fields are not empty, if they are - no saving
validates :description, presence: true
validates :deadline, presence: true
before_save :default_values


  def default_values
    self.completion_status ||= 'Not completed'
  end
end
