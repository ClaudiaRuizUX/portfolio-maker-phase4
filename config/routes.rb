# Rails.application.routes.draw do
#     resources :skills, :categories, :projects, :posts, only: [:index, :show, :new, :create, :edit, :update]
# end

Rails.application.routes.draw do
  resources :skills
  resources :projects
  resource :sections

end

  