class Record < ApplicationRecord
  belongs_to :project

  def updation_valid?
    created_at > 1.hours.ago
  end
end
