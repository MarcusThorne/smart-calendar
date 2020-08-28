Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # resources :calendars, only: [:index] do
  resources :events
  # end
  get "/weekly", to: "events#weekly"
  get "/monthly", to: "events#monthly"
  get "/daily", to: "events#daily"

  require "sidekiq/web"
    mount Sidekiq::Web => '/sidekiq'
end
