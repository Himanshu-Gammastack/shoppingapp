Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
   root to: "users#index"
   resources :users
   resources :sessions
end
