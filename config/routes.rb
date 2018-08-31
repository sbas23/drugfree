Rails.application.routes.draw do
  root to: "index#index"
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get 'login', to: 'login#login' #to: define el controlador y el metodo al que apunta
  resources :index, only: [:index]
  resources :fundation
  resources :service
  resources :chat, only: [:index]
  resources :forum
  resources :calendar
end