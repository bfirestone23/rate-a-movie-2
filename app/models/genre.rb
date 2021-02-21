class Genre < ApplicationRecord
    has_and_belongs_to_many :movies

    def slug
        name.downcase.gsub(" ", "-")
    end

    def self.find_by_slug(slug)
        Genre.all.find do |u|
            u.slug == slug
        end
    end
end
