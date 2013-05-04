Zapopan::Application.routes.draw do
  resources :books

  root :to => 'books#new'

end
