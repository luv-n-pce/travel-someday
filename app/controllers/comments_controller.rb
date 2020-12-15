class CommentsController < ApplicationController
  before_action :authenticate_user! 
  before_action :set_memory

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to memory_path(@memory)
    else
      redirect_to memory_path(@memory)
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    if @comment.destroy
      redirect_to memory_path(@memory)
    else
      render memory_path(@memory)
    end
  end



  private
  def set_memory
    @memory = Memory.find(params[:memory_id])
  end

  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, memory_id: params[:memory_id])
  end
end
