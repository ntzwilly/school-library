require_relative "corrector"

class Person
  attr_accessor :id, :name, :age
  attr_reader :parent_permission

  def initialize(age:, name: 'Unknow', parent_permission: true)
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def can_use_services?
    is_of_age? || parent_permission
  end

  def validate_name
    corrector = Corrector.new
    @name = corrector.correct_name @name
  end

  private

  def of_age?
    @age >= 18
  end
end

person = Person.new(age: 21, name: "willy")
puts person.age
puts person.name
puts person.validate_name

