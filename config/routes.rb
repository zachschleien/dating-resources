Rails.application.routes.draw do
  resources :resources
  root 'resources#index'  # homepage will now be all resources
end
