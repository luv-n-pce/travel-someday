class MemoriesController < ApplicationController
  before_action :authenticate_user!, except: :index
  before_action :move_to_index, except: [:index]
  before_action :set_memory, only: [:show, :edit, :update]

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
