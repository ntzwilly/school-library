require_relative 'corrector'

class Person
  attr_accessor :id, :name, :age
  attr_reader :parent_permission, :rentals

  def initialize(age:, name: 'Unknow', parent_permission: true)
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @corrector = Corrector.new
    @rentals = []
  end

  def can_use_services?
    is_of_age? || parent_permission
  end

  def validate_name
    @name = @corrector.correct_name @name
  end

  private

  def of_age?
    @age >= 18
  end
end

person_one = Person.new(age: 32, name: 'abraracourcix')
person_two = Person.new(age: 37, name: 'willy')

puts person_one.validate_name
puts person_two.validate_name
