Rails.application.routes.draw do
  resources :actors, only: [:index, :show]
  resources :movies
  root to: 'movies#index'
end
