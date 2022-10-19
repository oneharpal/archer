Rails.application.routes.draw do
  resources :records
  devise_for :users

  resources :projects do
    post 'create_record', on: :member
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "projects#index"
end
