module API
  class BookmarksController < ApplicationController
  respond_to :json
  
    def index
      if params[:user_id]
        @bookmarks = Bookmark.where(user_id: params[:user_id])
      elsif params[:user_id] && params[:city]
        @memories = Memory.where(user_id: params[:user_id], city: params[:search])
      else
        @bookmarks = Bookmark.all
      end
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
end