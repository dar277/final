class StrategiesController < ApplicationController

  def destroy
    strategy = Strategy.find_by("id" => params["id"])
    strategy.delete
    redirect_to "/efforts"
  end

  # Receive form submitted from /strategies/new
  def create
    Strategy.create("description" => params["description"],
      "frequency" => params["frequency"],
      "goal_id" => params["goal_id"])
      redirect_to "/efforts"
  end

  # Receive form submitted from /strategies/edit
  def update
    strategy = Strategy.find_by("id" => params["id"])
    strategy.update("description" => params["description"],
      "frequency" => params["frequency"],
      "goal_id" => params["goal_id"])
    redirect_to "/efforts"
  end

end
