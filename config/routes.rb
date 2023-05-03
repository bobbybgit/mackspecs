Rails.application.routes.draw do
  resources :parts
  resources :specs
  devise_for :users
  get 'pages/dash'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "pages#dash"
end
