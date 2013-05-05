class AddColumnGoogleAddressToLibrary < ActiveRecord::Migration
  def change
    add_column :libraries, :google_address, :string
  end
end
