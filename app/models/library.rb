class Library < ActiveRecord::Base
  attr_accessible :address, :attendant, :code, :name, :phone_number, :zone, :email, :password, :password_confirmation, :google_address

  has_and_belongs_to_many :books

  attr_accessor :password

  validates_confirmation_of :password
  validates_presence_of :password, :on => :create
  validates_presence_of :email
  validates_uniqueness_of :email

  before_save :encrypt_password

  def self.authenticate(email, password)
    library = find_by_email(email)
    if library && library.password_hash == BCrypt::Engine.hash_secret(password, library.password_salt)
      library
    else
      nil
    end
  end

  def encrypt_password
    if password.present?
      self.password_salt = BCrypt::Engine.generate_salt
      self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
    end
  end
end
