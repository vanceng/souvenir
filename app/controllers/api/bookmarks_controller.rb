module API
  class BookmarksController < ApplicationController
  respond_to :json

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

end