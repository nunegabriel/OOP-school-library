require './app'

class Menu
def main
  books = []
  rental_data = []
  people = []
  funct(books, people, rental_data)
end
end

main = Menu.new

main.main
