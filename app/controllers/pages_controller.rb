class PagesController < ApplicationController
	def home
    @top_books = Book.limit(5)
		render :home
	end
end
