Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  resources :resources, except: [:edit, :destroy]
  root 'resources#index'  # homepage will now be all resources
end
