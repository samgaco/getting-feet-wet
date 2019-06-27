Rails.application.routes.draw do

  resources :users 

  get 'users/index'
  get 'users/new'
  post 'users/new'
  patch 'users/new'
  get 'users/show'
  get 'users/edit'
  # get 'user/index'
  # get 'user/show'
  # get 'user/new'
  # get 'user/edit'
  root 'application#hello'
end