class AddPasswordAndPasswordHashToLibrary < ActiveRecord::Migration
  def change
    add_column :libraries, :password_hash, :string
    add_column :libraries, :password_salt, :string
    add_column :libraries, :email, :string
  end
end
