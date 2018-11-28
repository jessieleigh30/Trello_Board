class TasksController < ApplicationController
  before_action :set_task , only: [:show, :edit, :update, :destroy]
  before_action :set_list

  def index
    @tasks = @list.tasks.all
  end

  def show
  end

  def edit
  end

  def update
  end

  def new
    @task = Task.new
  end

  def create
    @task = @list.tasks.new(task_params)
    if @task.save
      redirect_to list_task_path(@list, @task)
    else
      render :new 
    end
  end

  def destroy
  end

  private
  def set_list
    @list = List.find(params[:list_id])
  end

  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:name)
  end
end
