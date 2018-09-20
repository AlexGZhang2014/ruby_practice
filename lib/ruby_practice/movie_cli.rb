class MovieCLI
  def start_app
    list_movies
    movie
  end

  def list_movies
    puts "Now Playing: All Of These Great Movies!"
    MovieScraper.new.scrape_movies
    list
  end

  def list
    Movie.all.each_with_index {|movie, index| puts "#{index+1}. #{movie.name}"}
  end

  def movie
    puts "To see more info on a specific movie, enter the number of that movie. Otherwise, type \'exit\' when you are done."
    input = nil
    num_of_movies = Movie.all.size
    movies = Movie.all
    until input == "exit"
      input = gets.strip
      movie_num = input.to_i
      if movie_num > 0 && movie_num <= num_of_movies
        movie = movies[movie_num-1]
        puts "Name: #{movie.name}"
        puts "Go to the following link to see the full details of this movie: https://www.regmovies.com#{movie.link}"
        puts "To see the full list of movies again, enter \'list\'. Otherwise, type \'exit\' when you are done."
      elsif input == "list"
        list
      elsif input == "exit"
        puts "Thanks for using this app. Goodbye!"
      else
        puts "That is not a valid input. You can only type \'list\', \'exit\', or a movie number."
      end
    end
  end
end
