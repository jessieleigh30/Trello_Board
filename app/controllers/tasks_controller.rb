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
  end

  def create
  end

  def destroy
  end

  private

end
