class Rental
  attr_reader :book, :person
  attr_accessor :date

  def initialize(date, book, person)
    @date = date
    @book = book
    @person = person
    book.rental_data << self
    person.rental_data << self
  end
end
