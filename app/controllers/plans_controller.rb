class PlansController < ApplicationController
  before_action :authenticate_user!

  def index
    @plans = current_user.plans
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

  def show
    @plan = Plan.find(params[:id])
  end

  def edit
    @plan = Plan.find(params[:id])
    unless @plan.user_id == current_user.id
      redirect_to root_path
    end
  end

  def update
    @plan = Plan.find(params[:id])
    if @plan.update(plan_params)
      redirect_to user_plan_path
    else
      render :edit
    end
  end

  private

  def plan_params
    params.require(:plan).permit(:country_id, :place, :text).merge(user_id: current_user.id)
  end

 
end
