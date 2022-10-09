Rails.application.routes.draw do
  resources :skills
  resources :projects
  resource :sections

  root 'projects#index'
  get '/auth/github/callback' => 'sessions#create'
  post '/' => 'sessions#destroy'
end

  