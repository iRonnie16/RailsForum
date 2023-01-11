Rails.application.routes.draw do
  get 'users/new'

  root 'posts#index'
  
  resources :posts
  get '/pages/', to: 'pages#index'
  get '/pages/new', to: 'pages#new', as: 'new_page'
  post '/pages', to: 'pages#create'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  get '/admin', to: 'pages#admin', as: 'admin_page'
  get '/signup' => 'users#new'
  post '/users' => 'users#create'
  get '/pages/:id', to: 'pages#show', as: 'page'
  get '/pages/:id/edit', to: 'pages#edit', as: 'edit_page'
  patch '/pages/:id', to: 'pages#update'
  delete 'pages/:id', to: 'pages#destroy'
end
