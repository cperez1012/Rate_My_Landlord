class Apartment < ApplicationRecord
    has_many :comments, dependent: :delete_all
    has_many :users, through: :comments

    def avgScore
        return 0 unless comments.count.positive?
        comments.average(:rating).round(2).to_f
    end

    def full_address
        "#{self.street_number} #{self.street_name}, #{self.city}, #{self.state}, #{self.zipcode}, #{self.country}"
    end

    def all_comments
        comments
    end
end
