class PagesController < ApplicationController
  def edit
    @title = "Edit"
  end

  def index
    @title = "Index"
  end

  def new
    @title = "New"
  end

  def show
    @title = "Show"
  end

end
