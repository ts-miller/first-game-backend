class User < ApplicationRecord
    has_many :levels
    validates :name, presence: true, uniqueness: true
end
