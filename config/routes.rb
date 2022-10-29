Rails.application.routes.draw do
  resources :projects, only: [:show, :index] do
    resources :skills, only: [:show, :index, :new, :edit]
  end
  resources :projects
  resources :skills
  resources :sections
  root 'skills#index'
end

