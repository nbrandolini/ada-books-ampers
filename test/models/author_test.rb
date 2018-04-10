require "test_helper"
require "pry"

describe Author do

  describe "first_published" do

    it "should return the year of the earliest published book for the author with multiple books as an integer" do

      authors(:metz).first_published.must_equal 1000

    end

    it "should return the string 'NO BOOKS' for the author with no books" do

      authors(:dee).first_published.must_equal "NO BOOKS"

    end

    it "should return the year of the earliest published book for the author with at least one book with nil publication_year" do

      authors(:chris).first_published.must_equal 2012
      
    end

  end

end
