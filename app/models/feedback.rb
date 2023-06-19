class Feedback < ApplicationRecord
    validates :like, presence: :true
end
