Rails.application.routes.draw do
  root :to => 'welcome#index'
  resources :barbers
  resources :users
end
