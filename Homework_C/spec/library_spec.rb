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

end
