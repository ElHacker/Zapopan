require 'openlibrary'

class Book < ActiveRecord::Base

  attr_accessible :author, :edition, :editorial, :isbn, :publication_date, :title

  def self.get_open_library_data(isbn)
    data = Openlibrary::Data
    data.find_by_isbn(isbn)
  end
end
