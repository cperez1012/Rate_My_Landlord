class Apartment < ApplicationRecord
    has_many :comments, dependent: :delete_all
    has_many :users, through: :comments
end
