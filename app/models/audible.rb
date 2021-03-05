class Audible < ApplicationRecord
has_one_attached :track
has_many :reviews
end
