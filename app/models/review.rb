class Review < ApplicationRecord
    has_one_attached :image

    with_options presence: true do
        validates :review_title
        validates :commic_title
        validates :text
    end
end
