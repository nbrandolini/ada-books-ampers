require "test_helper"

describe Book do
  let(:book) { Book.new title: "Wizard of Oz", author_id: (Author.create name: "Kari B").id }

  it "must be valid" do
    book.author = Author.create name: "Kari B"
    value(book).must_be :valid?
  end

  it "must have a title" do
    book.author = Author.create name: "Kari B"

    book.title = nil

    book.valid?.must_equal false
    book.errors.must_include :title

  end

  it "must have a title between 1 and 25 letters" do
    book.author = Author.create name: "Kari B"

    book.title = ""
    book.valid?.must_equal false

    book.title = "12345678901234567890123456"
    book.valid?.must_equal false

  end

  it "must have an author" do
    author =  Author.create name: "Kari B"

    book.author = author

    book.author_id.must_equal author.id

  end

  it "must have a genre field" do
    book.genres.must_equal []
    book.genres << Genre.create( name: "Sci Fi")

    genre = Genre.find_by name: "Sci Fi"

    book.genres.must_include genre

  end



























end
