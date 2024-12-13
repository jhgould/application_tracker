Rails.application.routes.draw do
  root "main#index"

  devise_for :users
  
  get "/dashboard", to: "dashboards#show", as: :dashboard 

  #auto added route
  get "up" => "rails/health#show", as: :rails_health_check
end
