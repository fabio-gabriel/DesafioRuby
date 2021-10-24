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
  
  Digite a operacao desejada: '
  
  number = gets.chomp

  calc_operation = Operations.new

  if number == '1'
    print 'Digite a dtring JSON com as notas: '
    grades = gets.chomp
    print 'Digite a string com os alunos: '
    blacklist = gets.chomp

    puts calc_operation.biased_mean(grades, blacklist)

  elsif number == '2'
    print 'Digite os números, separados por espaco: '
    string_num = gets.chomp
    
    puts calc_operation.no_integers(string_num)
  
  elsif number == '3'
    print 'Digite o genero: '
    genre = gets.chomp
    print 'Digite o ano de lancamento: '
    year = gets.chomp

    puts calc_operation.filter_films(genre, year)
  end

end

