class MovieCLI
  def start_app
    list_movies
  end

  def list_movies
    puts "These are the movies of today!"
    list
  end

  def list
    Movie.all.each {|movie| puts "#{movie.name}"}
  end
end
