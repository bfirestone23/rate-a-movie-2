class Movie < ApplicationRecord
    has_and_belongs_to_many :genres
    has_many :reviews

    def slug
        title.downcase.gsub(" ", "-")
    end
  
    def self.find_by_slug(slug)
        Movie.all.find do |m|
            m.slug == slug
        end
    end
end
