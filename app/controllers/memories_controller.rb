class MemoriesController < ApplicationController
  before_action :authenticate_user!, except: :index

  def index
    @memories = Memory.order("created_at DESC")
  end
end
