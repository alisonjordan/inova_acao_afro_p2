Rails.application.routes.draw do
  resources :filmes
  resources :ators
  resources :criticas
  resources :logs
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "filmes#index"
end
