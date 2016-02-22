class Api::V1::StoriesController < ApplicationController

  def index
    render json: current_project.stories
  end

  def show
    render json: Story.find(params[:id])
  end

  def create
    story = Story.create(story_params)
    render json: story
  end

  def update
    story = Story.find(params[:id])
    story.update(story_params)
    render json: story
  end

  def destroy
    story = Story.find(params[:id])
    story.destroy
    render nothing: true
  end

  private
  def story_params
    params.require(:story).permit(:name, :state, :description, :points, :project_id, :due_date, :completion_date)
  end
end
