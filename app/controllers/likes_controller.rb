class LikesController < ApplicationController
  def create
    @like = current_user.likes.create(memory_id: params[:memory_id])
    redirect_back(fallback_location: root_path)
  end

  def destroy
    @memory = Memory.find(params[:memory_id])
    @like = current_user.likes.find_by(memory_id: @memory.id)
    @like.destroy
    redirect_back(fallback_location: root_path)
  end
end
