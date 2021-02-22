require 'csv'

User.create(username: "Brian", email: "bfirestone2339@gmail.com", password: "test")
User.create(username: "Michael", email: "bfirestone2339@gmail.com", password: "test")
User.create(username: "Jordan", email: "bfirestone2339@gmail.com", password: "test")
User.create(username: "Andrew", email: "bfirestone2339@gmail.com", password: "test")
User.create(username: "Marcus", email: "bfirestone2339@gmail.com", password: "test")




table = CSV.parse(File.read("lib/assets/movies.csv"), headers: true)

failures = []

table.each do |r|
    movie = Movie.create(title: r)

    escaped_title = URI.escape(movie.title)
    

    hash = OmdbService.new
    result = hash.get_all_data_by_title(escaped_title)

    movie.update(result)
    
    if movie.released == nil
        failures << movie
    end
end

failures.each do |movie|
    puts movie.title
end

reviews_table = CSV.parse(File.read("lib/assets/reviews.csv"), headers: true)

review_failures = []
reviews_table.each do |r|
    review = Review.create(rating: r[2].to_f, notes: r[4], watch_date: r[3])
    review.user = User.find_by(username: r[0])
    review.movie = Movie.find_by(title: r[1])
    review.save

    if review.movie == nil
        review.destroy
    end
end