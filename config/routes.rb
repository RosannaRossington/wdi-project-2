Rails.application.routes.draw do

  devise_for :users
  root 'statics#home'
  resources :users, only: [:index, :show, :edit]
  resources :recommendations
  get "/inbox", to: "recommendations#inbox"
  get "/outbox", to: "recommendations#outbox"
end
