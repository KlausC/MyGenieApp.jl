using Genie.Router
using BooksController
using BooksController.API
using Dates

route("/") do
  serve_static_file("welcome.html")
end

route("/hallo") do
    "<ul><li>W I L L K O M M E N</li>
    <li>$(now())</li>
    </ul>"
end

route("/bgbooks", BooksController.billgatesbooks)

route("/api/v1/bgbooks", BooksController.API.billgatesbooks)

