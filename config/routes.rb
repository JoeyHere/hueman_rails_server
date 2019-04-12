Rails.application.routes.draw do
  resources :user_level_actions
  resources :users
  resources :levels
  post '/played/:id', to: 'levels#played'
  post '/completed/:id', to: 'levels#completed'
   patch '/publish/:id', to: 'levels#publish'
  post '/login', to: 'auth#create'
  get '/profile', to: 'users#profile'
  post '/signup', to: 'users#create'
  get '/mylevels', to: 'levels#myLevels'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
