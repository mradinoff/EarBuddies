Rails.application.routes.draw do
  post 'user_token' => 'user_token#create'
  resources :venues
  resources :events
  resources :users
  resources :friendships
  resources :events_users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
