Rails.application.routes.draw do

  root 'pages#home'

  get "services" => "pages#services", as: :services
  get "portfolio" => "pages#portfolio", as: :portfolio
  get "team" => "pages#team", as: :team
  get "about" => "pages#about", as: :about

  resources :contacts
  #get "contacts/new" => "contacts#new"
  #get "contacts" => "contacts#index"
  #get "contacts/:id" => "contacts#show"
  #post "contacts" => "contacts#create"
  #delete "contacts/:id" => "contacts#destroy"

  get "thankyou" => "contacts#thankyou"
end
