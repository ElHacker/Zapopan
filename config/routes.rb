Zapopan::Application.routes.draw do

  resources :books do
    collection do
      post 'isbn_lookup'
    end
  end

  root :to => 'books#new'

end
