class TasksController < ApplicationController

    def index
        @user = User.find_by(id: params[:user_id])
        @tasks = if @user then
            @user.tasks
        else
            Task.all
        end

        respond_to do |format|
            format.html 
            format.json { render :json => @tasks }
        end  
    end

    def show
        @user = User.find(params[:user_id])
        @task = @user.tasks.find(params[:id])

        respond_to do |format|
            format.html 
            format.json { render :json => @task }
        end  
    end

    def destroy
        @user = User.find(params[:user_id])
        @task = @user.tasks.find(params[:id])

        @task.destroy
        redirect_to user_tasks_path @user
    end
end
