Rails.application.routes.draw do
  resources :pieces
  get "specs/index", to: "specs#index", as: "specs"
  get "specs/spec_table", to: "specs#spec_table", as: "spec_table"
  get "specs/:id", to: "specs#show", as: "spec"
  get "pages/dash", to: "pages#dash", as: "dash"
  

  resources :styles
  devise_for :users
  devise_scope :user do
    match '/sessions/user', to: 'devise/sessions#create', via: :post
  end

  get 'pages/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "pages#index"
end
