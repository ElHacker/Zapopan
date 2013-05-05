require 'openlibrary'

class Book < ActiveRecord::Base

  attr_accessible :author, :edition, :editorial, :isbn, :publication_date, :title, :tag_list
  # Alias for acts_as_taggable "tags"
  acts_as_taggable

  has_and_belongs_to_many :libraries

  def self.get_open_library_data(isbn)
    data = Openlibrary::Data
    book = data.find_by_isbn(isbn)
    result = { title: book.title }
    result[:authors] = book.authors.map {|a|a['name']}.join(",")
    result[:publish_date] = book.publish_date
    result[:editorial] = book.publishers.map{|a|a["name"]}.join(",")
    result
  end

end
