class ProjectsController < ApplicationController

	def new
	end

	def create
      @user=User.find(session[:user_id])
	  @user.projects.new(name: params[:project][:name],start_date: params[:project][:start_date],end_date: params[:project][:end_date])
		
		if @user.save
		   flash[:success]= "Project Created successfully"
			redirect_to user_path(current_user)
        else
        	render 'new'
        end
    end
end
