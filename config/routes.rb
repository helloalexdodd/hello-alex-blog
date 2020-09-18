Rails.application.routes.draw do
  root 'pages#home'
  get 'about', to: 'pages#about'
  # since we are using every route, we can remove the only specification
  # resources :articles, only: [:show, :index, :new, :create, :edit, :update, :destroy]
  resources :articles
  get 'signup', to: 'users#new'
  # we can individually declare routes, or instead just open all routes, with exceptions
  # post 'user', to: 'users#create'
  resources :users, except: [:new]
end
