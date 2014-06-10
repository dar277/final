Finalapp::Application.routes.draw do

  # Specify a custom home page
  get "/" => "efforts#index"

  # Sign-In and Sign-Out

  get "/logout" => 'sessions#logout'
  get "/login" => 'sessions#login'
  post "/authenticate" => 'sessions#authenticate'

  # Resource: Users

  # --- Create
  get "/users/new" => 'users#new'
  post "/users" => 'users#create'

  # --- Read
  get "/users" => 'users#index'
  get "/users/:id" => 'users#show'

  # -- Update
  get "/users/:id/edit" => 'users#edit'
  patch "/users/:id" => 'users#update'

  # --- Delete
  delete "/users/:id" => 'users#destroy'

  # Resource: Goal

  # --- Create
  get "/goals/new" => 'goals#new'
  post "/goals" => 'goals#create'

  # --- Read
  get "/goals" => 'goals#index'
  get "/goals/:id" => 'goals#show'

  # -- Update
  get "/goals/:id/edit" => 'goals#edit'
  patch "/goals/:id" => 'goals#update'

  # --- Delete
  delete "/goals/:id" => 'goals#destroy'

# Resource: Strategy

 # --- Create
  get "/strategies/new" => 'strategies#new'
  post "/strategies" => 'strategies#create'

  # --- Read
  get "/strategies" => 'strategies#index'
  get "/strategies/:id" => 'strategies#show'

  # -- Update
  get "/strategies/:id/edit" => 'strategies#edit'
  patch "/strategies/:id" => 'strategies#update'

  # --- Delete
  delete "/strategies/:id" => 'strategies#destroy'

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
