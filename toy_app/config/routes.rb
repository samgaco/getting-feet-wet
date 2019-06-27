Rails.application.routes.draw do

  get 'users/index'
  get 'users/new'
  get 'users/show'
  get 'users/edit'
  # get 'user/index'
  # get 'user/show'
  # get 'user/new'
  # get 'user/edit'
  root 'application#hello'
end