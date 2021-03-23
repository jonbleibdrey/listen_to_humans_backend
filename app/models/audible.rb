class Audible < ApplicationRecord
has_one_attached :track
has_many :reviews
validates :title, presence: true, length: { minimum: 5,  message: "Title Must be at least 5 characters" }
validates :by, presence: true, length: { minimum: 5,  message: "By Must be at least 3 characters" }
validates :language, presence: true, length: { minimum: 5,  message: " Language Must be at least 5 characters" }
validates :audio_file, presence: true, length: { minimum: 5,  message: " Audio file Must be at least 3 characters" }

end
