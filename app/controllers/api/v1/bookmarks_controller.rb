class Api::V1::BookmarksController < ApplicationController
  def index
    render json: current_user.all_bookmarks
  end

  def show
    render json: Bookmark.find(params[:id])
  end

  def create
    bookmark = Bookmark.create(bookmark_params)
    bookmark.projects << jank_to_projects
    current_user.bookmarks << bookmark
    current_user.save
    render json: bookmark
  end

  def update
    bookmark = Bookmark.find(params[:id])
    bookmark.update(bookmark_params)
    render json: bookmark
  end

  def destroy
    bookmark = Bookmark.find(params[:id])
    bookmark.destroy
    render nothing: true
  end

  private
  def bookmark_params
    params.require(:bookmark).permit(:link, :title, :user_id, :jankiness)
  end

  def jank_to_numbers
    bookmark_params[:jankiness].split(",").map{|num| num.to_i}
  end

  def jank_to_projects
    jank_to_numbers.map{|id| Project.find(id)}
  end
end
