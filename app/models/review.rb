class Review < ApplicationRecord
    has_many :audibles
    has_many :users, through: :audibles
end
