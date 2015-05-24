class BookmarksController < ApplicationController

  before_filter :require_login
  
  def index
    @bookmarks = params[user_id: @current_user.id]
    render "index"
  end

  private

    def require_login
      unless current_user
        redirect_to home_path
      end
    end

end