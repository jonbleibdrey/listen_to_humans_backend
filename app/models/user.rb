class User < ApplicationRecord
    has_secure_password
    has_many :audibles
    has_many :reviews, through: :audibles

    validates_presence_of :email
    validates_uniqueness_of :email
end
