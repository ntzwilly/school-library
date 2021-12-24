require_relative '../solver'

describe Solver do
  before(:each) do
    @solve = Solver.new
  end

  context 'Factorial' do
    it 'Should check if the solver instance is really an instance of the Solver class' do
      expect(@solve).to be_instance_of Solver
    end

    it 'Checks the existence of the factorial method' do
      expect(@solve).to respond_to :factorial
    end

    it 'Should check if factorial method works as' do
      factorial_of_three = @solve.factorial(3)
      expect(factorial_of_three).to be 6
    end

    it 'Should return 1 for factorial of 1' do
      factorial_of_one = @solve.factorial(1)
      expect(factorial_of_one).to be 1
    end

    it 'Should be able to handle negative value' do
      less_than_zero = @solve.factorial(-10)
      expect(less_than_zero).to eql 'Cannot calculate the factorial of a negative number'
    end
  end

  context 'Reverse' do
    it 'Should find reverse method existent' do
      expect(@solve).to respond_to :reverse
    end

    it 'Should return yrneH for Henry' do
      expect(@solve.reverse('Henry')).to eql 'yrneH'
    end

    it 'Should return NOITACINUMMOC for COMMUNICATION' do
      expect(@solve.reverse('COMMUNICATION')).to eql 'NOITACINUMMOC'
    end
  end

  context 'Fizzbuzz' do
    it 'Should return fizz if a number is divisible by 3 only' do
      divisible_by_three_only = @solve.fizzbuzz(9)
      expect(divisible_by_three_only).to eql 'fizz'
    end

    it 'Should return buzz if a number is divisible by 5 only' do
      divisible_by_five_only = @solve.fizzbuzz(25)
      expect(divisible_by_five_only).to eql 'buzz'
    end

    it 'Should return fizzbuzz if number is divisible by 3 and 5' do
      divisible_by_three_and_five = @solve.fizzbuzz(30)
      expect(divisible_by_three_and_five).to eql 'fizzbuzz'
    end

    it 'Should return same number if not disible by 3 or 5' do
      not_a_fan = @solve.fizzbuzz(22)
      expect(not_a_fan).to eql 22
    end
  end
end
