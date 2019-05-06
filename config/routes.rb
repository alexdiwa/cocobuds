Rails.application.routes.draw do
  get 'messages/index'
  get 'conversations/index'
  devise_for :users, :controllers => { registrations: 'registrations' }
 
  root to: "users#home"
  get "/users/preview", to: "users#preview", as: "preview"
  resources :users
  get "/pages/:page", to: "pages#show"
  post "/payments", to: "payments#stripe"
  get "/payments/success", to: "payments#success"

  resources :conversations, only: [:index, :create] do
    resources :messages, only: [:index, :create]
  end
  get "/saved", to: "follows#index", as: "saved"
  resources :follows, only: [:create, :destroy]
end