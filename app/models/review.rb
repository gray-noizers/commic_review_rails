class Review < ApplicationRecord
    belongs_to :user
    has_one_attached :image
    

    with_options presence: true do
        validates :review_title
        validates :commic_title
        validates :text
        validates :image

        with_options numericality: { other_than: 1 } do
            validates :evaluation_id
        end
    end
    
end
