class Apartment < ApplicationRecord
    has_many :comments, dependent: :delete_all
    has_many :users, through: :comments

    def avgScore
        comments.average(:rating).round(2).to_f
    end
end
