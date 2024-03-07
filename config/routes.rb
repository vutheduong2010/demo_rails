Rails.application.routes.draw do
  resources :users, only:[:index]
  resources :duong, only: [:index]
  resources :tuition, only:[:index]


  resources :student
  get 'search_student', to: 'student#search', as: :search_student
  # get 'student/new', to: 'student#new'
  # root 'student#index'



  resources :teacher, only:[:index]
  resources :transcript, only:[:index]
  resources :classs, only:[:index]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end

