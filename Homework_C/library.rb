class Library
  # attr_accessor :library
#Create a class for a Library that has an array of books. Each book should be
 # a hash with a title, which is a string, and rental details, which is another
 # hash with a student name and due date.

  def initialize(books)
    @books = books
  end

  def get_books
    return @books
  end
# Create a method that takes in a book title and returns all of the
# information about that book.
  def find_book_by_title(title)
    for book in @books
      if book[:title] == title
        return book
      end
    end
  end
#Create a method that takes in a book title and returns only the rental details
#for that book.

  def find_rental_details_by_title(title)
    for book in @books
      if book[:title] == title
        return book[:rental_details]
      end
    end
  end
  # Create a method that takes in a book title and adds it to our book list
  # (add a new hash for the book with the student name and date being left as
  # empty strings)
  def add_book(title)
    new_book = {
      title: title,
      rental_details: {
        student_name: "",
        date: ""
      }
    }
    @books.push(new_book)
    return @books.length
  end
#Create a method that changes the rental details of a book by taking in the
#title of the book, the student renting it and the date it's due to be returned.
  def change_rental_details(title, name, date)
    for book in @books
      if book[:title] == title
        book[:rental_details][:student_name] = name
        book[:rental_details][:date] = date
        return book
      end
    end
  end

end
