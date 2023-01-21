class Book
  attr_reader :title, :author, :rental_data

  def initialize(title, author)
    @title = title
    @author = author
    @rental_data = []
  end

  def add_rental(date, person)
    rental_data << Rental.new(date, person, self)
  end
end