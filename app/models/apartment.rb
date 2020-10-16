class Apartment < ApplicationRecord
    has_many :comments, dependent: :delete_all
    has_many :users, through: :comments

    # validates :street_number, uniqueness: {scope: :stree_name}
    

    def avgScore
        return 0 unless comments.count.positive?
        # comments.average(:rating_noise, :rating_staff, :rating_safety, :rating_maintenance, :rating_appearance).round(2).to_f
        comments.average(:rating).round(2).to_f
    end

    def avgScore_noise
        return 0 unless comments.count.positive?
        comments.average(:rating_noise).round(2).to_f
    end

    def avgScore_safety
        return 0 unless comments.count.positive?
        comments.average(:rating_safety).round(2).to_f
    end

    def avgScore_appearance
        return 0 unless comments.count.positive?
        comments.average(:rating_appearance).round(2).to_f
    end

    def avgScore_maintenance
        return 0 unless comments.count.positive?
        comments.average(:rating_maintenance).round(2).to_f
    end

    def avgScore_staff
        return 0 unless comments.count.positive?
        comments.average(:rating_staff).round(2).to_f
    end

    def full_address
        "#{self.street_number} #{self.street_name}, #{self.city}, #{self.state}, #{self.zipcode}, #{self.country}"
    end

    def all_comments
        collection = comments.map do |comment| 

            comment = {:username => comment.user.username, :review => comment}
            
         
        end
        return collection
    end

end
