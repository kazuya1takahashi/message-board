Rails.application.routes.draw do
  devise_for :users, controllers: { :omniauth_callbacks => "omniauth_callbacks" }

  get 'pages/index'

  get 'pages/show'
  
  # Userログイン時
  authenticated :user do
    root to: 'messages#index', :as => "user_authenticated_root"
  end

  resources :messages
  
  root 'pages#index'
  
end
