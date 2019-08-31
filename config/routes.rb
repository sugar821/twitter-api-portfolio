Rails.application.routes.draw do
  get 'tweets/search',"tweets#search"
  
  resources :tweets
  get 'home/index'
  
  root 'home#index'
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
end
