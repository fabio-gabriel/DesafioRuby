require_relative '../extra_operations'
require 'net/http'
require 'json'

module Calculator
  class Operations
    include ExtraOperations
  
    def biased_mean(grades, blacklist)
      @grades = JSON.parse(grades)
      blacklist_arr = blacklist.split

      blacklist_arr.each do |black|
        @Grades_new = @grades.select {|key, array| key != black} #Remove os alunos presentes na blacklist e coloca os que sobraram na Grades_new
        @grades = @Grades_new 
      end

      mean = 0
      index = 0

      @Grades_new.each do |key, array|
        mean += array 
        index += 1 
      end

      mean /= index 
      return mean
    end
  
    def no_integers(numbers)
      numbers_string = numbers.split

      @answers = '' 
      
      numbers_string.each do |n|
        last_two = n[-2..-1]

        if last_two == '00' || last_two == '25' || last_two == '50' || last_two == '75' 
          @answers += 'S '
        else
          @answers += 'N '
        end
      end
      return @answers
    end
  
    def filter_films(genres, year)
      films = get_films




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