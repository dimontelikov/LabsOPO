class Calculation
  def self.run(input_arg, array_of_string)
    case input_arg
    when 1
      puts search_max(array_of_string)
    when 2
      puts search_min(array_of_string)
    when 3
      puts search_mean(array_of_string)
    when 4
      puts search_corrected_sample_variance(array_of_string)
    end
  end

  def self.search_max(array_of_string)
    max = array_of_string[0]
    (1..array_of_string.length - 1).each do |i|
      max = array_of_string[i] if max.split(',')[1].to_i < array_of_string[i].split(',')[1].to_i
    end
    max
  end

  def self.search_min(array_of_string)
    min = array_of_string[0]
    (1..array_of_string.length - 1).each do |i|
      min = array_of_string[i] if min.split(',')[1].to_i > array_of_string[i].split(',')[1].to_i
    end

    min
  end

  def self.search_mean(array_of_string)
    sum = 0
    (0..array_of_string.length - 1).each do |i|
      sum += array_of_string[i].split(',')[1].to_f
    end
    sum / array_of_string.length
  end

  def self.search_the_difference_amount(array_of_string, mean)
    result = 0
    (0..array_of_string.length - 1).each do |i|
      result += (array_of_string[i].split(',')[1].to_f - mean)**2
    end
    result
  end

  def self.search_corrected_sample_variance(array_of_string)
    mean = search_mean(array_of_string)
    sum = search_the_difference_amount(array_of_string, mean)
    (sum.to_f / (array_of_string.length - 1))
  end
end
