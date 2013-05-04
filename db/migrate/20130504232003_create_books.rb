class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.datetime :publication_date
      t.string :editorial
      t.string :edition
      t.string :isbn

      t.timestamps
    end
  end
end
