Rails.application.routes.draw do
  devise_for :users , :controllers => {:registrations => "user/registrations"}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'users#my_portfolio'
  get 'my_portfolio', to: "users#my_portfolio"
  get 'search_stocks', to: 'stocks#search'
  get 'search_friends', to: 'users#search'
  resources :users, only: [:show]
  resources :friendships
  resources :user_stocks, only: [:create, :destroy]
  post 'add_friend', to: "users#add_friend"
  get 'my_friends', to: "users#my_friends"
end
