Rails.application.routes.draw do
  root to: 'tweets#index'
  resources :tweets, only: [:index, :create, :update]
end
