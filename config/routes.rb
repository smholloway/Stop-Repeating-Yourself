StopRepeatingYourself::Application.routes.draw do
  match 'home' => 'home#index', :via => :get
  match 'about' => 'home#about', :via => :get
  match 'contact' => 'home#contact', :via => :get

  root :to => "home#index" # define the root path

  match '*a' => redirect('/') # send all random routes to home
end
