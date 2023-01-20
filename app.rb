require './student'
require './book'
require './teacher'
require './rental'

def show_books(books)
    if books.empty?
      puts 'No books found in library'
    else
      books.each { |book| puts "Title: #{book.title}, Author: #{book.author}" }
    end
end

  def add_people(people)
    puts 'Press 1 to add a student or press 2 to add a teacher'
    person_to_add = gets.chomp.to_i
    puts 'Age?'
    age = gets.chomp.to_i
    puts 'Name?'
    name = gets.chomp
  
    case person_to_add
    when 1
      puts 'Do you have parent permission? [Y/N]'
      user_response = gets.chomp.upcase
      user_permission = user_response == 'Y'
      people << Student.new(nil, age, name, parent_permission: user_permission)
    when 2
      puts 'Specialization?'
      specialization = gets.chomp
      people << Teacher.new(specialization, age, name)
    end
    puts 'Person added successfully'
  end
  
  def add_book(books)
    puts 'Add a book'
    print 'Title :'
    title = gets.chomp.capitalize
    print 'Author:'
    author = gets.chomp.capitalize
    books.push(Book.new(title, author))
    puts 'Added Book successfully'
  end

  def add_rental(books, people, rental_data)
    puts 'Please select a book from the list by number'
    books.each_with_index { |book, index| puts "#{index} Title: #{book.title}, Author: #{book.author}" }
    selected_book = gets.chomp.to_i
    puts "Please select a person from the list by number:"
    people.each_with_index do |person, index|
      puts "#{index} Name: #{person.name} Age: #{person.age}, ID: #{person.id}"
    end
    selected_person = gets.chomp.to_i
    
    print 'Date: '
    selected_date = gets.chomp
    rental_data << Rental.new(selected_date, people[selected_person], books[selected_book])
    puts 'Rental added successfully'
  end

  def show_rental_data(rentals)
    print 'Enter person ID: '
    selected_person_id = gets.chomp.to_i
    matched_rentals = rentals.select { |rental| rental.person.id == selected_person_id }
    
    if matched_rentals.empty?
      puts "No rental data found for ID: #{selected_person_id}"
    else
      matched_rentals.each do |rental|
        puts "Book: #{rental.book.title} | Person: #{rental.person.name} | Date: #{rental.date}"
      end
    end
  end

  def show_people(people)
    unless people.empty?
      people.each do |person|
        puts "Name: #{person.name}, Age: #{person.age}, ID: #{person.id}"
      end
    else
      puts 'No person found'
    end
  end
  


  


  


