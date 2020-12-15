class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user_id = current_user.id
    @nickname = current_user.nickname
    @memories = current_user.memories
  end
end
