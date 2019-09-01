Rails.application.routes.draw do
  
  get 'tweets/search',"tweets#search"
  get 'home/index'
  
  resources :tweets do
    resources :reviews
  end
  root 'home#index'
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
end
