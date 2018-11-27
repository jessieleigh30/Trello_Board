class BoardsController < ApplicationController

  def index
    @boards = current_user.boards
  end

  def show
  end

  def new
    @board = Board.new
  end

  def edit
  end
end
