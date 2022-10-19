class Record < ApplicationRecord
  belongs_to :project

  attribute :expense, default: true

  validates :name, :amount, presence: true

  def updation_valid?
    created_at > 1.hours.ago
  end
end
