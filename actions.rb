require './book'
require './person'

module Actions
  def list_books
    @books.each { |book| puts book }
  end

  def list_people
    @people.each { |person| puts person }
  end
  def create_person
    print 'Do you want to create a student (1) or a teacher (2)? [Input the number]: '
    choice = gets.chomp
    case choice
    when '1'
      create_student
    when '2'
      create_teacher
    else
      puts 'That is not a valid input'
      nil
    end
  end
end
