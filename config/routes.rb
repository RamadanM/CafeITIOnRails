Rails.application.routes.draw do

  #resources :odrder_products
  # get ':controller(/:action(/:id))'
  root :to => 'users#index'

  # mount RailsAdmin::Engine => '/admin/', as: 'rails_admin'
  # devise_for :users, :controllers => {:registrations => "registrations"}
  # resources :odrder_products
  # resources :categories
  # resources :products
  # resources :orders
   #resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
