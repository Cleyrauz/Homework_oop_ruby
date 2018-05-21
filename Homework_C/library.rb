class Library
  # attr_accessor :library
#Create a class for a Library that has an array of books. Each book should be
 # a hash with a title, which is a string, and rental details, which is another
 # hash with a student name and due date.

  def initialize(new_books)
    @books = new_books
  end

  def get_books
    return @books
  end

#   def find_book_by_title(library, title)
#     for book in library
#       if title == library[:title]
#         return book
#       end
#     end
#   end
#
end
