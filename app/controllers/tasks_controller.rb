class TasksController < ApplicationController

  before_action  :find_task, only: [:edit, :update, :destroy, :show]
  def index
    @tasks = Task.all
  end

  def show
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to @task
  end

  def edit

  end

  def update
    @task.update(task_params)
    @task.save
    redirect_to @task
  end

  def destroy
    @task.destroy
    redirect_to tasks_path
  end


  def find_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:name, :status)
  end

end
