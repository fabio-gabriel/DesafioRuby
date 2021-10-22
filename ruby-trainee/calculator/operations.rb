require_relative '../extra_operations'
require 'net/http'
require 'json'

module Calculator
  class Operations
    include ExtraOperations
  
    def biased_mean(grades, blacklist)

      @grades = JSON.parse(grades)
      @blacklist = blacklist.split

      @grades.each do |key, array|
        
      end
    end
  
    def no_integers(numbers)
      @numbers = numbers
    end
  
    def filter_films(genres, year)
      films = get_films
      @genres = genres
      @year = year
    end
    
    private
  
    def get_films
      url = 'https://raw.githubusercontent.com/yegor-sytnyk/movies-list/master/db.json'
      uri = URI(url)
      response = Net::HTTP.get(uri)
      return JSON.parse(response, symbolize_names: true)
    end
  end
end