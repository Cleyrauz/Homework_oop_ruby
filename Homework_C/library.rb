class Library
  attr_accessor :library

  def initialize(books)
    @library = books
  end

  def get_books_library(library)
    return library[0...3]
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
