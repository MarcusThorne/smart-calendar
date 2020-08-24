Rails.application.routes.draw do
  devise_for :users
  root to: 'events#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # resources :calendars, only: [:index] do
  resources :events
  # end
end
