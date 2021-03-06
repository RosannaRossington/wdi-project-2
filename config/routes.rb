Rails.application.routes.draw do

  devise_for :users
  root 'statics#landing_page'
  resources :recommendations do
      resources :comments
  end
  get "/inbox", to: "recommendations#inbox"
  get "/outbox", to: "recommendations#outbox"
  get "/home", to: "statics#home"

  authenticate :user do
    resources :users, only: [:new, :create, :edit, :update, :destroy, :show]
  end
  resources :users, only: [:index]
  
  
end
