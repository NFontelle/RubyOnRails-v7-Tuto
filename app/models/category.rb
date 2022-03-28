class Category < ApplicationRecord
    has_many :posts
    has_many :matas, as: :mettable
    
end
