class User < ApplicationRecord
    has_many :comments, dependent: :delete_all
    has_many :apartments, through: :comments 

    validates :first_name, :last_name, :password, :username, presence: true
    validates :username, uniqueness: true

    def my_comments
        collection = comments.map do |comment| 

            comment = {:apartmentImg => comment.apartment.photoImg, :review => comment}
        end
    end
end
