class Player < ApplicationRecord

  with_options presence: true do
    validates :name, length: { maximum: 10 }, uniqueness: true
    validates :points
  end

end
