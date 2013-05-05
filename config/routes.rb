Zapopan::Application.routes.draw do

  get "log_out" => "sessions#destroy", :as => "log_out"
  get "log_in" => "sessions#new", :as => "log_in"

  get 'sign_up' => 'libraries#new', :as => 'sign_up'
  resources :libraries
  resources :sessions
  resources :books do
    collection do
      post 'isbn_lookup'
      get 'search_with_tags'
    end
  end

  root :to => 'pages#home'

end
