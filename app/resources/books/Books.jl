module Books

using SearchLight

export Book

mutable struct Book <: AbstractModel
  ### INTERNALS
  _table_name::String
  _id::String

  ### FIELDS
  id::DbId
  title::String
  author::String

  ### constructor
  Book(;
    ### FIELDS
    id = DbId(),
    title = "",
    author = ""
  ) = new("books", "id", id, title, author)
end

function seed()
    BillGatesBooks = [
        ("The Best We Could Do", "Thi Bui"),
        ("Evicted: Poverty and Profit in the American City", "Matthew Desmond"),
        ("Believe Me: A Memoir of Love, Death, and Jazz Chickens", "Eddie Izzard"),
        ("The Sympathizer!", "Viet Thanh Nguyen"),
        ("Energy and Civilization, A History", "Vaclav Smil")
    ]
    
    for b in BillGatesBooks
        SearchLight.save!(Book(title = b[1], author = b[2]))
    end
end

end
