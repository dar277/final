  class EffortsController < ApplicationController

  def index
  # @user = User.find_by(:id => session[:user_id])
  end

  def destroy
    effort = Effort.find_by("id" => params["id"])
    effort.delete
    redirect_to "/efforts"
  end

  # Receive form submitted from /efforts/new
  def create
    Effort.create("value" => params["value"],
      "date" => params["date"],
      "goal_id" => params["goal_id"],
      "strategy_id" => params["strategy_id"])
    redirect_to "/efforts"
  end

  # Receive form submitted from /efforts/edit
  def update
    effort = Effort.find_by("id" => params["id"])
    effort.update("value" => params["value"],
      "date" => params["date"],
      "goal_id" => params["goal_id"],
      "strategy_id" => params["strategy_id"])
    redirect_to "/efforts"
  end

end
