Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do

      resources :users
      resources :offers
      resources :jobs
      resources :job_posts
      resources :experiences
      resources :appointments


      post '/users/signup', to: 'users#create'
      post '/users/login', to: 'users#login'


    end
  end
end
