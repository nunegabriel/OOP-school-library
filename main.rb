require './app'
def main
  funct(books = [], people = [], rental_data = [])
end

def display_menu
  puts 'Welcome to the school library'
  puts ' Please choose a task'
  puts '1: list all books.'
  puts '2: list all people.'
  puts '3: Create a person'
  puts '4: Create a rental'
  puts '5: Create a book'
  puts '6: List all rented books to a person by ID'
  puts '7: Exit'
end

def funct(books = [], people = [] , rental_data = [])
  loop do
    display_menu
    option = gets.chomp.to_i
    case option
    when 1
      show_books(books)
    when 2
      show_people(people)
    when 3
      add_people(people)
    when 4
      add_rental(books, people, rental_data)
    when 5
      add_book(books)
    when 6
      show_rental_data(rental_data)
    else
      break
    end
  end
end

main
