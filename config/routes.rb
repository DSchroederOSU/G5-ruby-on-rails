Rails.application.routes.draw do
  resources :users

  get 'users/index'
  get 'users/new'
  get 'registered', to: 'users#register'
  get 'users/:id/repairs', to: 'users#repairform'


  
end
