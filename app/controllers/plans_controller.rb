class PlansController < ApplicationController
  before_action :authenticate_user!

  def index

  end

  def new
    @plan = Plan.new
  end

  def create
    @plan = Plan.new(plan_params)
    if @plan.save
      redirect_to user_plans_path
    else
      render :new
    end
  end

  private

  def plan_params
    params.require(:plan).permit(:country_id, :place, :text).merge(user_id: current_user.id)
  end

 
end
