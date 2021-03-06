Rails.application.routes.draw do
  root :to => "home#index"
  devise_for :users, :controllers => {:registrations => "registrations"}

  get '/users/:id/change_password', to: 'users#change_password'

  resources :customers do
  	resources :contacts do
  		put 'mark_as_completed'	
  	end
  end

  resources :users, :categories, :countries, :orders, :products

end