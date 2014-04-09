PhotoSharing::Application.routes.draw do

get 'signup', to: 'users#new', as: 'signup'
get 'login', to: 'sessions#new', as: 'login'
delete 'logout', to: 'sessions#destroy', as: 'logout'

resources :sessions
resources :users
resources :photos

root to: 'photos#index'

end
