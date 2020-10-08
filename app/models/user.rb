class User < ApplicationRecord
    has_many :comments
    has_many :apartments, through: :comments 
end
