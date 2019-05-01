Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  root to: "users#index"
  resources :users
  get "/pages/:page" => "pages#show"
end