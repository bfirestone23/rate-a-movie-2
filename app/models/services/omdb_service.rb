class OmdbService

    def get_data_by_title(title)
        response = HTTP.get("http://www.omdbapi.com/?apikey=#{ENV["OMDB_API_KEY"]}&t=#{title}").to_s
        parsed_response = JSON.parse(response)
        parsed_response
    end

end