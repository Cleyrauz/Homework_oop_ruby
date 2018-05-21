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
  library_books = Library.new(@library)
  get_books_library(@library)

  assert_equal(@library[0...3])
  end

#   def test_pet_shop_name
#   name = pet_shop_name(@pet_shop)
#   assert_equal("Camelot of Pets", name)
# end

#   def test_find_book_by_title
#     library_books = Library.new(@library)
#     find_book_by_title(@library, "1984")
#
#     assert_equal("1984", library[:title])
#   end
#
end
