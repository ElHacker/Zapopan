class LibrariesController < ApplicationController

  def show
    @library = Library.find(params[:id])
  end

  def new
    @library = Library.new
  end

  def edit
    @library = Library.find(params[:id])
  end

  def create
    @library = Library.new(params[:library])
    if @library.save
      redirect_to @library, notice: 'Library was successfully created.'
    else
      render action: "new"
    end

  end

  def update
    @library = Library.find(params[:id])

    if @library.update_attributes(params[:library])
      redirect_to @library, notice: 'Library was successfully updated.'
    else
      render action: "edit"
    end
  end

end
