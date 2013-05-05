class CreateLibraries < ActiveRecord::Migration
  def change
    create_table :libraries do |t|
      t.integer :code
      t.string :name
      t.string :attendant
      t.string :phone_number
      t.string :address
      t.string :zone

      t.timestamps
    end
  end
end
