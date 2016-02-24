Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :barbers
  devise_for :users
  root :to => 'home#index'
  get 'about' => 'home#about'
  get 'styles' => 'home#styles'
  resources :appointments
  resources :mailinglist
  match "/create_mailinglist" => "home#create_mailinglist", :via => :post, :as => :create_mailinglist

end
