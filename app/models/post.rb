class Post < ApplicationRecord

    include Sluggable
    belongs_to :category, counter_cache: true
    has_and_belongs_to_many :tags
    has_many :matas, as: :mettable


    scope :published, -> { where(online: true)}
    scope :offline, -> { where(online: false)}




   
end