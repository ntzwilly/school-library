    class Person 
        attr_accessor :id, :nane, :age

        def initialize (name: "Unknow", age:, parent_permission: true)
            @id = Random.rand(1..1000)
            @name = name
            @age = age
            @parent_permission = parent_permission
        end

        def id 
            @id
        end

        def name 
            @name
        end

        def age 
            @age
        end

        def is_of_age? 
            if @age >= 15
                true
            else
                false
            end
        end
    end
end

person_1 = Person.new
puts person_1 

