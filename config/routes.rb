# Rails.application.routes.draw do
#     resources :skills, :categories, :projects, :posts, only: [:index, :show, :new, :create, :edit, :update]
# end

Rails.application.routes.draw do
  root 'welcome#home'
  get '/auth/github/callback' => 'sessions#create'
  post '/' => 'sessions#destroy'

  resources :projects
  resources :skills
  resource :sections
end

  