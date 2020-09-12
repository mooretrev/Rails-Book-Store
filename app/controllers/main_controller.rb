class MainController < ApplicationController
  def index
    @books = Book.all
  end

  def add_book
  end

  def added_book
    b = Book.new
    b.title = request.query_parameters['title']
    b.author = request.query_parameters['author']
    b.genre = request.query_parameters['genre']
    b.price = request.query_parameters['price']
    b.publish_date = request.query_parameters['publish_date']
    b.save
    redirect_to "/"
  end 
  
  def delete_book
    @books = Book.all
  end

  def deleted_book
    id = request.query_parameters['id']
    Book.destroy(id)

    redirect_to "/"
  end

  def edit_book
    @books = Book.all
  end

  def editing_book
    @id = request.query_parameters['id']
    @book = Book.find(@id)
  end

  def edited_book    
    print
    Book.destroy(request.query_parameters['id'])
    b = Book.new
    b.title = request.query_parameters['title']
    b.author = request.query_parameters['author']
    b.genre = request.query_parameters['genre']
    b.price = request.query_parameters['price']
    b.publish_date = request.query_parameters['publish_date']
    b.save
    redirect_to "/"
  end


  
end
