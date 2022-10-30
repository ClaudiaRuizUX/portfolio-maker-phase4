Rails.application.routes.draw do
  resources :projects, only: [:show, :index, :new] do
    resources :skills, only: [:show, :index, :new, :edit]
  end

  resources :projects
  resources :skills
  resources :sections
  root 'skills#index'

  get '/auth/github/callback' => 'sessions#create'
  post '/' => 'sessions#destroy'
end

