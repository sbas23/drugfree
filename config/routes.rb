Rails.application.routes.draw do
  
  resources :events
  root to: "index#index"
  devise_for :users

  resources :index, only: [:index]
  resources :fundation
  resources :service
  resources :forum
  resources :calendar
  resources :chat_rooms, only: [:new, :create, :show, :index]

  mount ActionCable.server => '/cable'
end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get 'login', to: 'login#login' #to: define el controlador y el metodo al que apunta