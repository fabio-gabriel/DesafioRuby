require_relative 'operations'

module Calculator
  class Menu
    def initialize(operation)
      @operation = operation
    end
  end
  
  print '
  ------ MENU ------

  1. Biased mean
  
  Digite a operacao desejada: '
  
  number = gets.chomp

  calc_operation = Operations.new

  if number == '1'
    print 'Digite a dtring JSON com as notas: '
    json = gets.chomp
    print 'Digite a string com os alunos: '
    students = gets.chomp

    puts calc_operation.biased_mean(json, students)
  end

end

