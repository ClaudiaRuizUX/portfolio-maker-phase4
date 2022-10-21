Rails.application.routes.draw do
  resources :skills
  resources :projects
  resources :sections
  root 'projects#index'
  get '/auth/github/callback' => 'sessions#create'
  post '/' => 'sessions#destroy'
end
