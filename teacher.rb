require_relative 'person'

class Teacher < Person
  def initialize(age:, specialization:, name: 'Unknow')
    super(name: name, age: age)
    @specialization = specialization
  end

  def can_use_services?
    true
  end

  def to_s
    "[Teacher] #{super}"
  end

  def to_json(*args)
    {
      JSON.create_id => self.class.name,
      'id' => id,
      'name' => name,
      'age' => age,
      'specialization' => @specialization
    }.to_json(*args)
  end
end
