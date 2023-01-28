require '../rental'
require '../book'
require '../person'

describe Rental do
  context 'Perform the following on people and age' do
    person = Person.new('14', 'Gabz', true)
    book = Book.new('Gabz', 'John')

    rented = Rental.new('01-01-2013', book, person)

    it 'Creates rental for person' do
      expect(person.rentals).to include(rented)
    end
  end
end