Rails.application.routes.draw do
  resources :customers
  root 'welcomes#index'
end
