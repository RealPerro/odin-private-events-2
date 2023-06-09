Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "events#index"
  # Defines the root path route ("/")
  # root "articles#index"

  devise_for :users
  resources :events do
    member do
      put :add_attendee
    end
  end
  resources :users
end
