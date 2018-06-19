Rails.application.routes.draw do
  root 'static_pages#home'
  get '/help',   to: 'static_pages#help'
  get '/about',  to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
  get '/signup', to: 'users#new'
  get 'users/:id',   to:'users#show'
  post '/signup',    to: 'users#create'
#  get  '/users/new',     to: 'users#new'
#  post '/users',     to: 'users#create', :as => 'user'
  resource :users
end
