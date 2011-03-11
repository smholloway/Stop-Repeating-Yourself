StopRepeatingYourself::Application.routes.draw do

  resources :products

  devise_for :users

  match 'home' => 'home#index', :via => :get
  match 'about' => 'home#about', :via => :get
  match 'contact' => 'home#contact', :via => :get
  match 'problem' => 'home#problem', :via => :get
  match 'module' => 'home#module', :via => :get
  match 'technology' => 'home#technology', :via => :get

  root :to => "home#index" # define the root path

  match '*a' => redirect('/') # send all random routes to home
end
