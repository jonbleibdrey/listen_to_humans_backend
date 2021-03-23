class Review < ApplicationRecord
 belongs_to :audible
 validates :title, presence: true, length: { minimum: 5,  message: "Title must be at least 5 characters"  }
 validates :description, presence: true, length: { minimum: 10,  message: "Description must be at least 10 characters" }
 validates :rating, presence: true, inclusion: { in: 1..5 , message:"choose a number 1-5"}

end
