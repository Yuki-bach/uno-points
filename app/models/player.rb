class Player < ApplicationRecord
  # validates :name, presence: true, length: { maximum: 10 }, uniqueness: true

  with_options presence: true do
    validate: name, length: { maximum: 10 }, uniqueness: true
    validate: point
  end
  
end
