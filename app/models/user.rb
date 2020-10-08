class User < ApplicationRecord
    has_many :comments, dependent: :delete_all
    has_many :apartments, through: :comments 
end
