class Player < ApplicationRecord

  validates :name, length: { maximum: 50 }, presence: true
  attribute :points, default: 0

end
