Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "static_pages#index"

  get 'sobre', to: 'static_pages#sobre'
  get 'contato', to: 'static_pages#contato'
  get 'entrar', to: 'sessions#new'
  post 'entrar', to: 'sessions#create'
  get 'sair', to: 'sessions#destroy'
  delete 'sair', to: 'sessions#destroy'

  resources :contacts
  resources :users, only: [:new, :create, :show, :edit, :update]
end
