class Solver
  def factorial(num)
    num_factorial = 1
    if num.negative?
      'Cannot calculate the factorial of a negative number'
    else
      (1..num).each { |p| num_factorial *= p }
      num_factorial
    end
  end

  def reverse(string)
    split_str = string.chars
    reverse_str = []
    split_str.each { |str| reverse_str.unshift(str) }
    reverse_str.join
  end

  def fizzbuzz(num)
    if (num % 3).zero? && (num % 5).zero?
      'fizzbuzz'
    elsif (num % 5).zero?
      'buzz'
    elsif (num % 3).zero?
      'fizz'
    else
      num
    end
  end
end
