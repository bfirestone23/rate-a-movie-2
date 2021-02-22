Rails.application.routes.draw do
  resources :genres, only: [:index, :show]
  resources :movies, except: [:edit, :update]
  resources :reviews

  resources :users, except: [:new]

  get '/signup', to: 'users#new', as: 'new_user'
  get '/login', to: 'users#get_login', as: 'login'
  post '/login', to: 'users#post_login'
  get '/logout', to: 'users#logout', as: 'logout'
  get '/home', to: 'application#home', as: 'home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
