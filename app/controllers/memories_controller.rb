class MemoriesController < ApplicationController
  before_action :authenticate_user!, except: :index
  before_action :move_to_index, except: [:index, :search]
  before_action :set_memory, only: [:show, :edit, :update, :destroy]

  def index
    @memories = Memory.order("created_at DESC")
  end

  def new
    @memory = Memory.new
  end

  def create
    @memory = Memory.new(memory_params)
    if @memory.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @comment = Comment.new
    @comments = @memory.comments.order(created_at: :desc).includes(:user)
  end

  def edit
    unless @memory.user_id == current_user.id
      redirect_to memory_path
    end
  end

  def update
    if @memory.update(memory_params)
      redirect_to memory_path
    else
      render :edit
    end
  end

  def destroy
    if @memory.user_id == current_user.id
      @memory.destroy
      redirect_to root_path
    else
      redirect_to memory_path
    end
  end

  def search
    @memories = Memory.search(params[:keyword])
  end

  private

  def memory_params
    params.require(:memory).permit(:image, :title, :start_date, :end_date, :country_id, :place, :text).merge(user_id: current_user.id)
  end

  def set_memory
    @memory = Memory.find(params[:id])
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end
end
