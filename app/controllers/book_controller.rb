class BookController < ActionController::Base
  def index
    @books = Book.all
    @action = request.query_parameters['action']
    @title = request.query_parameters['title']
  end

  def new
  end

  def create
    b = Book.new
    b.title = params['title']
    b.author = params['author']
    b.genre = params['genre']
    b.price = params['price']
    b.publish_date = params['publish_date']
    b.save
    redirect_to "/?action=Created&title=#{b.title}"
  end

  def destroy
    id = params['id']
    b = Book.destroy(id)

    redirect_to "/?action=Deleted&title=#{b.title}"
  end

  def edit
    params['id']
    @id = params['id']
    @book = Book.find(@id)
  end

  def update    
    Book.destroy(params['id'])
    puts "\n\n"
    puts params['genre']
    puts "\n\n"
    b = Book.new
    b.title = params['title']
    b.author = params['author']
    b.genre = params['genre']
    b.price = params['price']
    b.publish_date = params['publish_date']
    b.save
    redirect_to "/?action=Edited&title=#{b.title}"
  end

  def show
    @book = Book.find(params['id'])
    @isDelete = request.query_parameters['delete'] == 'true'
  end
end
