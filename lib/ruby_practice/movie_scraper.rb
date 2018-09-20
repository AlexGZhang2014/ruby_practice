class MovieScraper
  def initialize
    doc = Nokogiri::HTML(open('https://www.regmovies.com/movies'))
    @movies = doc.css("div.shoveler-wrapper:nth-child(3) li.entry") #This returns all 26 movies under "Now Playing"
  end

  def scrape_movies
    index = 0
    @movies.each do |movie|
      until index = @movies.size
        name = @movies.css()
      end
    end
  end
end
