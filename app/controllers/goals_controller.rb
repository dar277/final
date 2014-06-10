class GoalsController < ApplicationController

  def destroy
    goal = Goal.find_by("id" => params["id"])
    goal.delete
    redirect_to "/efforts", notice: "Goal has been deleted"
  end

  # Receive form submitted from /goals/new
  def create
    goal = Goal.new
    goal.user_id = params["user_id"]
    goal.outcome = params["outcome"]
    goal.save
    redirect_to "/strategies/new"

    # user = User.find_by("id" => params["id"])
    # Goal.create("outcome" => params["outcome"], "user_id" => user["id"])
    # redirect_to "/strategies/new"
  end

  # Receive form submitted from /goals/edit
  def update
    goal = Goal.find_by("id" => params["id"])
    goal.update("outcome" => params["outcome"])
    redirect_to "/efforts"
  end

end
