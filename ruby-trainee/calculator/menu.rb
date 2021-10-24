require_relative 'operations'

module Calculator
  class Menu
    def initialize(operation)
      @operation = operation
    end
  end
  
  print '
  ------ CALCULATOR ------

  1. Biased mean
  2. Divisibility by 25
  3. Filter films (This is a calculator i swear)
  4. End
  
  Input the desired operation: '
  
  number = gets.chomp

  calc_operation = Operations.new

  if number == '1'
    print 'Type in the JSON string: '
    grades = gets.chomp
    print 'Type in the blacklisted students: '
    blacklist = gets.chomp

    puts calc_operation.biased_mean(grades, blacklist)

  elsif number == '2'
    print 'Input the numbers: '
    string_num = gets.chomp
    
    puts calc_operation.no_integers(string_num)
  
  elsif number == '3'
    print 'Type in the genre: '
    genre = gets.chomp
    print 'Type in the release year: '
    year = gets.chomp

    puts calc_operation.filter_films(genre, year)

  elsif number == '4'
    abort 'Program closed'
  end

end

