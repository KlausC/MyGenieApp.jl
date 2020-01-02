# BooksController.jl
module BooksController

using Genie.Renderer
using SearchLight
using Books

function billgatesbooks()
    html(:books, "billgatesbooks.jl.md", layout = :admin, books = all(Book))
end


module API

using Genie.Renderer
using SearchLight
using Books

function billgatesbooks()
    json(:books, "billgatesbooks", books = all(Book))
end

end

end
