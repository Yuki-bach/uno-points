class Player < ApplicationRecord

  attribute :points, :integer, default: 0

  with_options presence: true do
    validates :name, length: { maximum: 10 }, uniqueness: true
    validates :points
  end

end
