class Apartment < ApplicationRecord
    has_many :comments, dependent: :delete_all
    has_many :users, through: :comments

    # validate :duplicate_address
    

    def avgScore
        return 0 unless comments.count.positive?
        # comments.average(:rating_noise, :rating_staff, :rating_safety, :rating_maintenance, :rating_appearance).round(2).to_f
        # comments.average(:rating).round(2).to_f
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

    # def duplicate_address
    #     addresses = Apartment.map do |address|
    #         `#{address.full_address}`
    #     end
    #     byebug
    #     if addresses.include?(`#{self.street_number} #{self.street_name}, #{self.city}, #{self.state}`)
    #         errors.add(:full_address, "Already exists.")
    #     end
    # end

end
