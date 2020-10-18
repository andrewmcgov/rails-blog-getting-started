Rails.application.routes.draw do
  get 'welcome/index'

  # This adds all CRUD routes for the articles resource
  resources :articles

  root 'welcome#index'
end
