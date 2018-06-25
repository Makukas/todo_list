Rails.application.routes.draw do
  get 'sessions/new'

  get 'users/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :lists 
  resources :users
  resources :sessions
  root 'lists#show'
  get '/tasks', to: 'lists#show'
  get '/new_task', to: 'lists#new'
  get '/delete/:id', to: 'lists#delete'
  delete 'destroy_multiple', :to => 'lists#destroy_multiple'
  get '/sign_up', to: 'users#new'
  get '/edit/:id', to: 'lists#edit'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout',  to: 'sessions#destroy'
  get '/profile', to: 'sessions#profile'
end
