Rails.application.routes.draw do
  resources :projects, only: [:index, :show, :new, :create, :edit, :update] do
    resources :skills, only: [:index, :show, :new, :create, :edit, :update]
  end

  resources :projects
  resources :skills
  resources :sections
  root 'projects#index'
  get '/auth/github/callback' => 'sessions#create'
  post '/' => 'sessions#destroy'

end
