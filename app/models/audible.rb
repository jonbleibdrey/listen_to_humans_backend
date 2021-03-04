class Audible < ApplicationRecord
has_many :reviews
has_one_attached :track
end
