require './rental'
require './student'
require './book'
require './teacher'

def show_books(books)
  puts books.empty? ? 'No books found in library' : books.map { |book| "Title: #{book.title}, Author: #{book.author}" }
end

def show_people(people)
  puts people.empty? ? 'No person found' : people.map { |person| "Name: #{person.name}, Age: #{person.age}, ID: #{person.id}" }
end

def add_book(books)
  puts 'Please add a book'
  print 'Input Title: '
  title = gets.chomp
  title = title.capitalize unless title.empty?
  print 'Input Author: '
  author = gets.chomp
  author = author.capitalize unless author.empty?

  if title.empty? || author.empty?
    puts 'Title and Author are required to add a book.'
    return
  end

  books.push(Book.new(title, author))
  puts 'Book added successfully'
end

def add_rental(books, people, rental_data)
  puts 'Please select a book'

  books.each_with_index do |book, index| 
    puts "#{index + 1}. Title: #{book.title}, Author: #{book.author}"
  end
  selected_book = gets.chomp.to_i

  puts "Please select a person:"
  people.each_with_index do |person, index|
    puts "#{index + 1}. Name: #{person.name}, Age: #{person.age}, ID: #{person.id}"
  end
  selected_person = gets.chomp.to_i

  print 'Input date (yyyy-mm-dd): '
  selected_date = gets.chomp
  rental_data.push(Rental.new(selected_date, people[selected_person - 1], books[selected_book - 1]))
  puts 'Dsata updated successfully'
end

def show_rental_data(rentals)
  print 'Input Person ID: '
  selected_id = gets.chomp.to_i
  rentals.each do |rental|
    if rental.person.id == selected_id
      puts "Book: #{rental.book.title}"
      puts "Person: #{rental.person.name}"
      puts "Date: #{rental.date}"
    end
  end
end

def add_people(people)
  puts '1. Add a student'
  puts '2. Add a teacher'
  person_to_add = gets.chomp.to_i

  if person_to_add == 1
    print 'Input Age: '
    age = gets.chomp.to_i
    print 'Input Name: '
    name = gets.chomp
    print 'Do you have parent permission? (yes/no): '
    parent_permission = gets.chomp.downcase == 'yes'
    people << Student.new(nil, age, name, parent_permission: parent_permission)
  elsif person_to_add == 2
    print 'Input Age: '
    age = gets.chomp.to_i
    print 'Input Name: '
    name = gets.chomp
    print 'Input Specialization: '
    specialization = gets.chomp
    people << Teacher.new(specialization, age, name)
  else
    puts 'Invalid option'
    return
  end

  puts 'Person successfully added'
end
