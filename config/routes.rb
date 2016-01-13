Rails.application.routes.draw do
  root :to => 'welcome#index'
  get 'signup' => 'users#new'
  resources :barbers
  resources :users
end
