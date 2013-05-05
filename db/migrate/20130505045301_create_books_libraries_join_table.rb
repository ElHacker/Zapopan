class CreateBooksLibrariesJoinTable < ActiveRecord::Migration
  def change
    create_table :books_libraries, :id => false do |t|
      t.integer :book_id
      t.integer :library_id
    end
  end
end
