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
end