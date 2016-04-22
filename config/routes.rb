Rails.application.routes.draw do
  get 'users/index'

  get 'users/show'

  get 'users/edit'

  devise_for :users
  root 'statics#home'
end
