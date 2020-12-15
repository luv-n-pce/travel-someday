class PlansController < ApplicationController
  before_action :authenticate_user!
  before_action :set_plan, only: [:show, :edit, :update, :destroy]

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
  end

  def edit
    unless @plan.user_id == current_user.id
      redirect_to root_path
    end
  end

  def update
    if @plan.update(plan_params)
      redirect_to user_plan_path
    else
      render :edit
    end
  end

  def destroy
    if @plan.user_id == current_user.id
      @plan.destroy
      redirect_to user_plans_path
    else
      redirect_to user_plans_path
    end
  end

  private

  def plan_params
    params.require(:plan).permit(:country_id, :place, :text).merge(user_id: current_user.id)
  end

  def set_plan
    @plan = Plan.find(params[:id])
  end
end
