Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root to: "home#index"
  resources :contacts
  resources :blogs do
    resources :comments
  end
  resources :testimonials
  resources :teams
  resources :projects
  resources :home
  resources :about_us
  resources :groups
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
