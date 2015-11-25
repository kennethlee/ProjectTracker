class ProjectsController < ApplicationController
  def index
  end

  def new
    @project = Project.new
  end

  private

    def project_params
      params.require(:project).permit(:name, :description)
    end
end
