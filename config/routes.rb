Rails.application.routes.draw do
  resources :blogs do
    resources :comments
  end
  resources :testimonials
  resources :teams
  resources :projects
  resources :home
  resources :about_us
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
