class Donation < ApplicationRecord
  enum :status, %w[success failed pending].index_by(&:to_sym), default: :pending

  validates :donor_name, presence: true

  monetize :amount_cents, numericality: {
    greater_than_or_equal_to: 1,
    less_than_or_equal_to: 100
  }

  belongs_to :campaign
end
