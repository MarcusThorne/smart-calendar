Rails.application.routes.draw do
  devise_for :users
  root to: 'events#daily'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # resources :calendars, only: [:index] do
  resources :events
  # end
  get "/weekly", to: "events#weekly"
  get "/monthly", to: "events#monthly"

  require "sidekiq/web"
    mount Sidekiq::Web => '/sidekiq'
end
