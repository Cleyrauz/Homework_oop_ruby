require("minitest/autorun")
require("minitest/rg")

require_relative("../library")

class TestLibrary < MiniTest::Test

def setup
  @library = [
    {
       title: "lord_of_the_rings",
       rental_details: {
        student_name: "Jeff",
        date: "01/12/18"
       }
     },

     {
        title: "the litle princess",
        rental_details: {
         student_name: "Mark",
         date: "02/12/18"
        }
      },

      {
         title: "wonder",
         rental_details: {
          student_name: "Rose",
          date: "03/12/18"
         }
       },

       {
          title: "1984",
          rental_details: {
           student_name: "Clara",
           date: "04/12/18"
          }
        }
   ]
end

def test_get_books_library
  library = Library.new(@library[0...3])

  books = library.get_books

  assert_equal(@library[0...3], books)
  end

  def test_find_book_by_title
  library = Library.new(@library)
  book = library.find_book_by_title("1984")
  assert_equal(@library[3], book)
  end

  def test_find_rental_details_by_title
    library = Library.new(@library)
    rent_details = library.find_rental_details_by_title("wonder")
    assert_equal(@library[2][:rental_details], rent_details)
  end

  def test_add_book
    library = Library.new(@library)
    num_of_books = library.add_book("13 reasons why")
    assert_equal(5, num_of_books)
  end

  def test_change_rental_details
    expected = {
       title: "the litle princess",
       rental_details: {
        student_name: "Mark",
        date: "02/12/18"
       }
     }
  library = Library.new(@library)
  book_updated = library.change_rental_details("the litle princess", "Mark",
    "02/12/18")
  assert_equal(expected, book_updated)
  end

end
