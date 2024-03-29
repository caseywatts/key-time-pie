KeyTimePie::Application.routes.draw do
  resources :activities

  root :to => "home#index"
  resources :users, :only => [:index, :show, :edit, :update ]
  resources :activity_groups
  match '/auth/:provider/callback' => 'sessions#create'
  match '/signin' => 'sessions#new', :as => :signin
  match '/signout' => 'sessions#destroy', :as => :signout
  match '/auth/failure' => 'sessions#failure'
end
