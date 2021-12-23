require 'json'

class Storage
  def hydrate(classroom)
    books = parse_books
    people = parse_people(classroom)
    rentals = parse_rentals(people, books)

    {
      'people' => people,
      'books' => books,
      'rentals' => rentals
    }
  end

  def parse_books
    file = 'books.json'

    if File.exist? file
      JSON.parse(File.read(file), create_additions: true)
    else
      []
    end
  end

  def parse_rentals(people, books)
    file = 'rentals.json'

    if File.exist? file
      JSON.parse(File.read(file)).map do |rental_json|
        book = books.find { |current_book| current_book.title == rental_json['book_title'] }
        person = people.find { |current_person| current_person.id == rental_json['person_id'].to_i }

        Rental.new(rental_json['date'], book, person)
      end
    else
      []
    end
  end

end