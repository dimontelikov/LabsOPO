load 'calculation.rb'

class Main
  def self.main
    number_oper = input_arg
    array_of_string = file_processing
    puts Calculation.run(number_oper, array_of_string)
  end

  def self.file_processing
    file = File.new('exm.csv', 'r:UTF-8')
    array_of_string = file.readlines
    array_of_string.shift(3) # delete the three first lines

    (0..array_of_string.length - 1).each do |i|
      array_of_string[i] = array_of_string[i].sub(/,\d+,/, ', ') # processing rows for calculation
    end

    array_of_string
  end

  def self.input_arg
    number_oper = 0

    puts '1 - Maximum'
    puts '2 - Minimum'
    puts '3 - Mean'
    puts '4 - Сorrected sample variance'

    loop do
      print 'Enter the arg:'
      number_oper = $stdin.gets.to_i
      break if number_oper >= 1 && number_oper <= 4
    end

    number_oper
  end
end

Main.main
