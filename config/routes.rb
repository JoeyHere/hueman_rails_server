Rails.application.routes.draw do
  resources :user_level_actions
  resources :users
  resources :levels
  post '/played/:id', to: 'levels#played'
  post '/completed/:id', to: 'levels#completed'
  post '/login', to: 'auth#create'
  get '/profile', to: 'users#profile'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
