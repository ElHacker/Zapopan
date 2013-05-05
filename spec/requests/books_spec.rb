require 'spec_helper'

describe "Books" do
  describe "GET /isbn_lookup" do
    before :all do
      get isbn_lookup_books_path, {'isbn' => '0451526538'}
    end
    it "returns the book information by isbn" do
      response.status.should be(200)
    end
    it "returns the book information by isbn" do
      book = JSON.parse response.body
      book.should have_key(:title)
    end
  end
end
