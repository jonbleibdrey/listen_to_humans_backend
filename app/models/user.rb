class User < ApplicationRecord
    has_many :audibles
    has_many :reviews, through: :audibles
end
