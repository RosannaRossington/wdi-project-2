Rails.application.routes.draw do

  devise_for :users
  root 'statics#home'
  resources :users, only: [:index, :show, :edit]
  resources :recommendations
end
