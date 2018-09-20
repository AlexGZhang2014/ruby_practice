class MovieCLI
  def start_app
    list_movies
    movie
  end

  def list_movies
    puts "These are the movies of today!"
    MovieScraper.new.scrape_movies
    list
  end

  def list
    Movie.all.each_with_index {|movie, index| puts "#{index+1}. #{movie.name}"}
  end

  def movie
    puts "To see more info on a specific movie, enter the number of that movie."
    
  end
end
