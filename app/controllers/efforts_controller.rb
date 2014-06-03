class EffortsController < ApplicationController

  def destroy
    effort = Effort.find_by("id" => params["id"])
    effort.delete
    redirect_to "/efforts"
  end

  # Receive form submitted from /directors/new
  def create
    Effort.create("value" => params["value"], "date" => params["date"])
    redirect_to "/efforts"
  end

  # Receive form submitted from /directors/edit
  def update
    effort = Effort.find_by("id" => params["id"])
    effort.update("value" => params["value"], "date" => params["date"])
    redirect_to "/efforts"
  end

end
