class Player < ApplicationRecord

  validates :name, uniqueness: true, length: { maximum: 20 }, presence: true
  attribute :points, default: 0

end
