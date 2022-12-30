class Score < ApplicationRecord
  validates :name, length: { maximum: 15, too_long: "can't be longer than 15 characters" }

  scope :ordered, -> { order(seconds: :asc) }
end
