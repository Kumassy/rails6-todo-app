class TasksController < ApplicationController

    def index
        @tasks = Task.all

        respond_to do |format|
            format.html 
            format.json { render :json => @tasks }
        end  
    end

    def show
        @task = Task.find(params[:id])

        respond_to do |format|
            format.html 
            format.json { render :json => @task }
        end  
    end

    def destroy
        @task = Task.find(params[:id])
        @task.destroy
        redirect_to tasks_path
    end
end
