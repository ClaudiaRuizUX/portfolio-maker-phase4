class SkillsController < ApplicationController
    def index
      if params[:project_id]
        @skills = Project.find(params[:project_id]).skills
      else
        @skills = Skill.all
      end
    end
    
    def show
        if params[:project_id]
          project = Project.find_by(id: params[:project_id])
          if project.nil?
            redirect_to projects_path, alert: "Project not found."
          else
            @skill = project.skills.find_by(id: params[:id])
            redirect_to project_skills_path(project), alert: "Skill not found." if @skill.nil?
          end
        else
        @skill = Skill.find(params[:id])
      end
    end
  
    def new
      if params[:project_id] && !Project.exists?(params[:project_id])
        redirect_to projects_path, alert: "Project not found."
      else
        @skill = Skill.new(project_id: params[:project_id])
      end
      # @skill = Skill.new
      # @projects = Project.all
    end

    def create
      skill = Skill.create(skill_params)
      redirect_to skill_path(skill)
      # @skill = Skill.new(skill_params)
      # @skill.save
      # redirect_to skill_path(@skill)
    end
  
    def edit
      if params[:project_id]
        project = Project.find_by(id: params[:project_id])
        if project.nil?
          redirect_to projects_path, alert: "Project not found."
          else
            @skill = project.skills.find_by(id: params[:id])
            redirect_to project_skills_path(project), alert: "Skill not found." if @skill.nil?
        end
      else
        @skill = Skill.find(params[:id])
      end
    end
  
    def update
      skill = Skill.find(params[:id])
      skill.update(skill_params)
      redirect_to skill_path(skill)
    end

    def destroy
      Skill.find(params[:id]).destroy
      redirect_to skills_url
    end
  
    private
  
    def skill_params
      params.require(:skill).permit(:name, project_ids: [])
    end
  end