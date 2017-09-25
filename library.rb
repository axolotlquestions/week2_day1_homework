class Library

  def initialize(input_books)
      @books = (input_books)
  end

  def books()
    return @books
  end

  def book_info(book_title)
    for book in @books
      if book[:title] == book_title
        return book
      end
    end
  end


  def book_rental_info(book_title)
    for book in @books
      if book[:title] == book_title
        return book[:rental_details]
      end
    end
  end

  def add_book(book_title)
    @books.push({title:(book_title), rental_details: {student_name: "", date: ""}})
  end

  def change_rental_details(book_title, renter, due_date)
    for book in @books
      if book[:title] == book_title
        book[:rental_details][:student_name] = (renter)
        book[:rental_details][:date] = (due_date)
      end
    end
  end

end
