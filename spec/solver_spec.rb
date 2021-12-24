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
      factorial_of_3 = @solve.factorial(3)
      expect(factorial_of_3).to be 6
    end
  end
end