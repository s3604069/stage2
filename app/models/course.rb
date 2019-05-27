class Course < ApplicationRecord
    validates :name,  presence: true, length: { maximum: 50 }
    validates :prerequisite,  presence: true, length: { maximum: 255 }
    validates :category,  presence: true, length: { maximum: 20 }
    validates :location, presence: true, length: { maximum: 10 }
end
