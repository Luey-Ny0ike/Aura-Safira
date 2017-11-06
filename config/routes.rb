Rails.application.routes.draw do
  resources :testimonials
  resources :blogs
  resources :teams
  resources :projects
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
