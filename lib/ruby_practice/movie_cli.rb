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
    until input == "exit"
      input = gets.strip
      movie_num = input.to_i
      binding.pry
      if movie_num > 0 && movie_num <= num_of_movies
        puts "yay"
      end
    end
  end
end
