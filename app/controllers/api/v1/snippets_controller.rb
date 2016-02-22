class Api::V1::SnippetsController < ApplicationController
  skip_before_action :authenticate!

  def index
    render json: current_user.snippets
  end

  def show
    render json: Snippet.find(params[:id])
  end

  def create
    snippet = Snippet.create(snippet_params)
    current_user.snippets << snippet
    current_user.save
    render json: snippet
  end

  def update
    snippet = Snippet.find(params[:id])
    snippet.update(snippet_params)
    render json: snippet
  end

  def destroy
    snippet = Snippet.find(params[:id])
    project = snippet.project
    snippet.destroy
    render json: project
  end

  private
  def snippet_params
    params.require(:snippet).permit(:code, :user_id, :project_id)
  end
end
