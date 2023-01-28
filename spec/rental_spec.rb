require_relative '../person'
require_relative '../book'
require_relative '../rental'

describe Rental do
  context 'When given a book and a person' do
    person = Person.new('24', 'GAbz')
    book = Book.new('All or something', 'Gee')

    rented = Rental.new('11-02-2013', book, person)

    it 'Expected to create rental for person' do
      expect(person.rental_data).to include(rented)
    end
end
end
