Rails.application.routes.draw do

  get '/recipes/search', to: 'recipes#search', as: 'recipes_search'

  resources :recipes

  resources :categories 

  resources :user do
      resources :recipes
    end

    resources :user do
      resources :categories
    end

  root to: 'application#welcome'

  devise_for :users, :controllers => {registrations: 'registrations', omniauth_callbacks: 'callbacks'}

  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
    get 'signup', to: 'devise/registrations#new'
  end

  
end
