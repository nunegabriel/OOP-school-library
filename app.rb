require './rental'
require './student'
require './book'
require './teacher'

class App
  def initialize
    super
    @books = []
    @rental_data = []
    @people = []
  end
end
