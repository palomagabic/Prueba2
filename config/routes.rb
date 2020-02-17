Rails.application.routes.draw do
  resources :tareas
  root 'users#index'
  get 'users/index'
  get 'users/negative'
  get 'users/positive'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
