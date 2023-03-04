class Player < ApplicationRecord

  validates :name, uniqueness: true, length: { maximum: 50 }, presence: true
  attribute :points, default: 0

end
