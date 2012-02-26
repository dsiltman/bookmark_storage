class BookmarksController < ApplicationController
	 # GET /bookmarks
  # GET /bookmarks.xml
  def index
    @bookmarks = Bookmark.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @bookmarks }
    end
  end
  
  
	def list
		@bookmarks = Bookmark.find(:all)
   end
   
   
def show
   	 @bookmarks = Bookmark.find(params[:name])
   end
   def new
   	 @bookmark = Bookmark.new
   end
   
   
   def create
   	 @bookmark = Bookmark.new(params[:bookmark])
      if @bookmark.save
            redirect_to :action => 'list'
      else
            render :action => 'new'
      end
   end
   
   
   def edit
   	 @book = Book.find(params[:name])
   end
   
   
   def update
   	 @book = Book.find(params[:id])
      if @bookmark.update_attributes(params[:bookmark])
      	redirect_to :action => 'show', :name => @book
      else
         render :action => 'edit'
      end
   end
   
   
   def delete
   	 Bookmark.find(params[:name]).destroy
      redirect_to :action => 'list'
   end
end
