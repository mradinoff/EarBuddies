Rails.application.routes.draw do
  resources :venues
  resources :events
  resources :users
  resources :friendships
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
