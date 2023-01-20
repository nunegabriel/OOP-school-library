require './nameable'
require './capital_decorator'
require './rental'
require './trimmer_decorator'

class Person < Nameable
  attr_accessor :id, :name, :age, :parent_permission

  def initialize(name='unknown', age, parent_permission: true)
    super()
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
  end

  def can_use_services?
    age >= 18 || @parent_permission
  end

  def correct_name
    name
  end

  private

  def of_age?
    age >= 18
  end

  def add_rental(book, date)
    Rental.new(date, book, self)
    rental.push(self)
  end
end
