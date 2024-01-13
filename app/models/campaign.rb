class Campaign < ApplicationRecord
  enum :category, %w[church medical animal political].index_by(&:to_sym), validate: true

  validates :name, presence: true
  validates :description, presence: true
end
