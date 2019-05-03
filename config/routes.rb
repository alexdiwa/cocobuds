Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
 
  root to: "users#home"
  get "/users/preview", to: "users#preview", as: "preview"
  resources :users
  get "/pages/:page", to: "pages#show"
  post "/payments", to: "payments#stripe"
  get "/payments/success", to: "payments#success"
end