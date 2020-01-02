# app/resources/books/views/billgatesbooks.json.jl
"Bill Gates' list of recommended books" => [Dict("author" => b.author, "title" => b.title) for b in books]
#books

