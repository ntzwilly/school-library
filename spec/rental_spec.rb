require_relative 'spec_helper'

describe Rental do
  describe 'Book Test' do
    person = Person.new(age: 20)
    book = Book.new('Things Fall Apart', 'Chinua Achebe')

    rental = Rental.new('2021/01/08', book, person)

    it 'An object Rental is returned and it take 3 params' do
      expect(rental).to be_an_instance_of Rental
    end

    it 'Sets date correctly' do
      expect(rental.date).to eq '2021/01/08'
    end

    it 'Sets person correctly' do
      expect(rental.person).to eq person
    end

    it 'Sets book correctly' do
      expect(rental.book).to eq book
    end

    context 'Person test' do
      it 'Should have the needed rental' do
        expect(person.rentals).to include(rental)
      end
    end

    context 'Book test' do
      it 'Should have the needed rental' do
        expect(book.rentals).to include(rental)
      end
    end
  end
end