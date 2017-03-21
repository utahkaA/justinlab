Rails.application.routes.draw do
  devise_for :users
  # devise_for :users, :controllers => {
  #   :registraions => 'users/registraions'
  # }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'top#index'
  get 'tweets' => 'tweets#index'
  get 'tweets/new' => 'tweets#new'
  post 'tweets' => 'tweets#create'
end
