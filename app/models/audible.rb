class Audible < ApplicationRecord
    belong_to :user
    belong_to :review
end
