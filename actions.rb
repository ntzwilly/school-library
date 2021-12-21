require './book'

module Actions
  def list_books
    @books.each { |book| puts book }
  end
end
