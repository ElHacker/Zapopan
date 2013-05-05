Zapopan::Application.routes.draw do

  resources :books do
    collection do
      post 'isbn_lookup'
      get 'search_with_tags'
    end
  end

  root :to => 'pages#home'

end
