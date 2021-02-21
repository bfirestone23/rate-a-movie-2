class OmdbService

    def get_all_data_by_title(title)
        response = HTTP.get("http://www.omdbapi.com/?apikey=#{ENV["OMDB_API_KEY"]}&t=#{title}").to_s
        parsed_response = JSON.parse(response)
        parsed_response
        filtered_response = parsed_response.select do |a|
            a == "Title" ||
            a == "Released" ||
            a == "Runtime" ||
            a == "Director" ||
            a == "Plot" ||
            a == "Awards" ||
            a == "Poster" ||
            a == "imdbRating"
        end
        @genres = parsed_response["Genre"]
        movie_attributes = filtered_response.deep_transform_keys(&:downcase).symbolize_keys
    end

    def parse_genres
        @genres.split(', ').map {|g| g}
    end

end