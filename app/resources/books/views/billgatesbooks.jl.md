<!-- app/resources/books/views/billgatesbooks.jl.md -->
## Bill Gates' $(length(books)) recommended books

$(
  @foreach(books) do book
    "* $(book.title) by $(book.author) \n"
  end
)
