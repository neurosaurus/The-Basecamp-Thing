class ProjectsController < ApplicationController
  def index
    @projects = Project.find_all_by_user_id(current_user.id)
  end

  def new
    @project = Project.new
  end

  def create
    project = current_user.projects.new(params[:project])
    project.save

    redirect_to projects_path
  end

  def show
    @project = Project.find(params[:id])
  end

  def edit

  end

  def destroy
  end

  def update
  end
end
