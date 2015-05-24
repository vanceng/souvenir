module API
  class BookmarksController < ApplicationController
  respond_to :json

<<<<<<< HEAD
    def index
      @bookmarks = Bookmark.all
      respond_with @bookmarks
    end

    def show
      @bookmark = Bookmark.where(id: params[:id])
      respond_with @bookmark
    end

    def create
      @bookmarks = Bookmark.create(bookmark_params)
      respond_with @bookmarks 
    end

    def update
      @bookmark = Bookmark.find(params[:id])
      @bookmark.update_attributes(bookmark_params)
      respond_with @bookmark 
    end

    def destroy
      @bookmark = Bookmark.find(params[:id])
      @bookmark.destroy
      respond_with @bookmark 
    end

    protected

    def bookmark_params
      params.require(:bookmark).permit(:memory_id, :user_id)
    end

  end
=======
  def index
    @bookmarks = Bookmark.where(user_id: params[:user_id])
    respond_with @bookmarks
  end

  def show
    @bookmark = Bookmark.where(id: params[:id])
    respond_with @bookmark
  end

  def create
    @bookmarks = Memory.create(memory_params)
    respond_with @bookmarks 
  end

  def update
    @bookmark = Memory.find(params[:id])
    @bookmark.update_attributes(memory_params)
    respond_with @bookmark 
  end

  def destroy
    @bookmark = Memory.find(params[:id])
    @bookmark.destroy
    respond_with @bookmark 
  end

>>>>>>> ac6adfd261ea18cd0af9247500a3fc7f0e06841a
end