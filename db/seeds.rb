stores     = Store.create     ([ { name: "Black Books" }, { name: "House of books" }, { name: "YABS"   } ])
publishers = Publisher.create ([ { name: "O'Reilly"    }, { name: "Piter"          }, { name: "Moscow" } ])

[
  "Ruby",
  "Ruby on rails",
  "ES6",
  "Node.js",
  "The Great Gatsby",
  "The adventures of Sherlock Holmes",
  "The adventures of Tom Sawyer",
  "Shantaram",
  "Drei Kameraden",
  "The Picture of Dorian Gray"
].each do |b|
  book = Book.create(name: b, publisher: publishers.sample)
  Stock.create(book: book, store: stores.sample, amount: rand(1..100))
end
