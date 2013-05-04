class Book < ActiveRecord::Base
  attr_accessible :author, :edition, :editorial, :isbn, :publication_date, :title
end
