require("minitest/autorun")
require ("minitest/rg")
require_relative("./library.rb")

class TestLibrary < MiniTest::Test

def setup()
  @books =
    [
      {
        title: "lord_of_the_rings",
        rental_details: {
         student_name: "Jeff",
         date: "01/12/16"
        }
      },
      {
        title: "dune",
        rental_details: {
         student_name: "Alice",
         date: "04/11/16"
       }
      },
      {
        title: "game_of_thrones",
        rental_details: {
         student_name: "Bob",
         date: "08/12/16"
       }
      }
    ]
end


  def test_list_books
    library = Library.new(@books)

    assert_equal([{:title=>"lord_of_the_rings", :rental_details=>{:student_name=>"Jeff", :date=>"01/12/16"}}, {:title=>"dune", :rental_details=>{:student_name=>"Alice", :date=>"04/11/16"}}, {:title=>"game_of_thrones", :rental_details=>{:student_name=>"Bob", :date=>"08/12/16"}}], library.books)
  end

  def test_book_info
    library = Library.new(@books)

    assert_equal({:title=>"lord_of_the_rings", :rental_details=>{:student_name=>"Jeff", :date=>"01/12/16"}}, library.book_info("lord_of_the_rings"))
  end


  def test_book_rental_info
    library = Library.new(@books)

    assert_equal({:student_name=>"Alice", :date=>"04/11/16"}, library.book_rental_info("dune"))
  end

  def test_add_book
    library = Library.new(@books)

  library.add_book("Ringworld")

  assert_equal([{:title=>"lord_of_the_rings", :rental_details=>{:student_name=>"Jeff", :date=>"01/12/16"}}, {:title=>"dune", :rental_details=>{:student_name=>"Alice", :date=>"04/11/16"}}, {:title=>"game_of_thrones", :rental_details=>{:student_name=>"Bob", :date=>"08/12/16"}}, {:title=>"Ringworld", :rental_details=>{:student_name=>"", :date=>""}}], library.books)
  end

def test_change_rental_details
  library = Library.new(@books)

  library.change_rental_details("dune", "carol", "05/12/16")

  assert_equal({:student_name=>"carol", :date=>"05/12/16"}, library.book_rental_info("dune"))
end




end
