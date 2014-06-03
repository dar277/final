Finalapp::Application.routes.draw do

  # Specify a custom home page
  get "/" => "goals#index"


  # Resource: Effort

  # --- Create
  get "/efforts/new" => 'efforts#new'
  post "/efforts" => 'efforts#create'

  # --- Read
  get "/efforts" => 'efforts#index'
  get "/efforts/:id" => 'efforts#show'

  # -- Update
  get "/efforts/:id/edit" => 'efforts#edit'
  patch "/efforts/:id" => 'efforts#update'

  # --- Delete
  delete "/efforts/:id" => 'efforts#destroy'

end
