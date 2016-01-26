Rails.application.routes.draw do

  resources :users

  root 'pages#home'

  get "services" => "pages#services", as: :services
  get "portfolio" => "pages#portfolio", as: :portfolio
  get "team" => "pages#team", as: :team
  get "about" => "pages#about", as: :about

  resources :contacts

  get "thankyou" => "contacts#thankyou"
end
