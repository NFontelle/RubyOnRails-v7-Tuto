class Horse < ApplicationRecord
    has_many :performances
    has_and_belongs_to_many :foods
    has_and_belongs_to_many :exercises
end
