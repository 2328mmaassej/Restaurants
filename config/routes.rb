Restaurants::Application.routes.draw do
  
root :to => "home#index"

  get "/home" => "Home#index", :as => "home"

  resources :recommendations


  resources :users


  resources :restaurants

  get '/sessions/new' => 'Sessions#new', :as => 'new_session'

  post '/sessions' => 'Sessions#create', :as => 'sessions'

  delete '/sessions' => 'Sessions#destroy'

end
