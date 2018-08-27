Rails.application.routes.draw do
  root to: "index#index"
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get 'login', to: 'login#login' #to: define el controlador y el metodo al que apunta
  resources :index
  #resources :role
  resources :fundation
  resources :service
  resources :chat
  resources :forum
  resources :calendar
  #resources :state
end