class MovieScraper
  def initialize
    doc = Nokogiri::HTML(open('https://www.regmovies.com/movies'))
    @movies = doc.css("div.shoveler-wrapper:nth-child(3) li.entry") #This returns all 26 movies under "Now Playing"
  end

  def scrape_movies
    @movies.each do |movie|
      name = movie.css("div.title").text
      link = movie.css("a").attr("href").value
      new_movie = Movie.new(name, link)
    end
  end
end
