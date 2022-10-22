Rails.application.routes.draw do
  resources :projects, only: [:show] do
    resources :skills, only: [:show, :index]
  end
  resources :skills, only: [:show] do
    resources :projects, only: [:show, :index]
  end
  resources :projects, only: [:index, :show, :new, :create, :edit, :update]
  resources :skills, only: [:index, :show, :new, :create, :edit, :update]
  resources :sections
  root 'projects#index'
  get '/auth/github/callback' => 'sessions#create'
  post '/' => 'sessions#destroy'
end
