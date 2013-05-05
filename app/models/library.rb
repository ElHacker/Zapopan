class Library < ActiveRecord::Base
  attr_accessible :address, :attendant, :code, :name, :phone_number, :zone

  has_and_belongs_to_many :books
end
