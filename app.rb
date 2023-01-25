require './rental'
require './student'
require './book'
require './teacher'

def show_books(books)
  if books.empty?
    puts 'No books found in library'
  else
    books.each do |book|
      puts "title: #{book.title}, Author: #{book.author}"
    end
  end
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

def funct(books, people, rental_data)
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

def add_people(people)
  puts '1.Add a student'
  puts '2.Add a teacher'
  person_to_add = gets.chomp.to_i
  print 'Age? '
  age = gets.chomp.to_i
  print 'Name? '
  name = gets.chomp

  case person_to_add
  when 1
    print 'Do you have parent Permission? [Y/N]:'
    user_response = gets.chomp.capitalize
    user_permission = true if user_response == 'Y'
    user_permission = false if user_response == 'N'
    people << Student.new(nil, age, name, parent_permission: user_permission)
  when 2
    print 'Specialisation?'
    specialisation = gets.chomp
    people << Teacher.new(specialisation, age, name)
  end
  puts 'Person added successfully'
end

def add_book(books)
  puts 'Please Add a book'
  print 'Title :'
  title = gets.chomp.capitalize
  print 'Author:'
  author = gets.chomp.capitalize
  books << Book.new(title, author)
  puts 'Book added successfully'
end

def add_rental(books, people, rental_data)
  puts 'Please select a book'

  books.each_with_index do |book, index|
    puts "#{index + 1}. Title: #{book.title}, Author: #{book.author}"
  end
  selected_book = gets.chomp.to_i

  puts 'Please select a person:'
  people.each_with_index do |person, index|
    puts "#{index + 1}. Name: #{person.name}, Age: #{person.age}, ID: #{person.id}"
  end
  selected_person = gets.chomp.to_i

  print 'Input date (yyyy-mm-dd): '
  selected_date = gets.chomp
  rental_data.push(Rental.new(selected_date, people[selected_person - 1], books[selected_book - 1]))
  puts 'Data updated successfully'
end

def show_rental_data(rentals)
  print 'Enter Person ID'
  selected_id = gets.chomp.to_i
  rentals.each do |rental|
    next unless rental.person.id == selected_id

    puts "Book: #{rental.book.title}"
    puts "Person: #{rental.person.name}"
    puts "Date: #{rental.date}"
  end
end

def show_people(people)
  if people.empty?
    puts 'No person found'
  else
    people.each do |person|
      puts "Name: #{person.name}, ID: #{person.id}, Age: #{person.age},"
    end
  end
end
