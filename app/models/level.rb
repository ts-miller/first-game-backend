class Level < ApplicationRecord
  belongs_to :user
  has_many :bricks
end
