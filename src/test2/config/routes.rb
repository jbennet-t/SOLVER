Rails.application.routes.draw do
  devise_for :users
  get 'main_page/index'
  get 'elections/index'
  get 'candidates/index'

  resources :pages
  resources :candidates
  resources :elections

  root to: 'main_page#index'
end
