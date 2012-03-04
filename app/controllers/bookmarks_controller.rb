class BookmarksController < ApplicationController
	 # GET /bookmarks
  # GET /bookmarks.xml
     
  def index
    @bookmarks = Bookmark.all

    respond_to do |format|
      format.html # index.html.erb
    end
  end
  
	 # GET /bookmarks/1
	 # GET /bookmarks/1.xml
     
def show
	@bookmark = Bookmark.find(params[:id])
   	 respond_to do |format|
      format.html # new.html.erb  
   end
 end  
 
 # GET /bookmarks/new
 # GET /bookmarks/new.xml
  def new
   	 @bookmark = Bookmark.new
   	 respond_to do |format|
      format.html # new.html.erb
   end
   end
   
  # POST /bookmarks
  # POST /bookmarks.xml
   def create
   	 @bookmark = Bookmark.new(params[:bookmark])

     if @bookmark.save
        redirect_to(@bookmark, :notice => 'Bookmark was successfully created.') 
    else
         render :action => "new" 
   end
   end

  # GET /bookmarks/1/edit
   def edit
   	 @bookmark = Bookmark.find(params[:id])
   end
   
  # PUT /bookmarks/1
  # PUT /bookmarks/1.xml   
   def update
   	 @bookmark = Bookmark.find(params[:id])
   	     respond_to do |format|
      if @bookmark.update_attributes(params[:bookmark])
      	 format.html { redirect_to(@bookmark, :notice => 'Bookmark was successfully updated.') }
      else
         format.html { render :action => "edit" }
      end
   end
 end
 
  # DELETE /bookmarks/1
  # DELETE /bookmarks/1.xml   
  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy

    respond_to do |format|
      format.html { redirect_to(bookmarks_url) }

    end
  end
end
