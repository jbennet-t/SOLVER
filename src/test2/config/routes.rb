Rails.application.routes.draw do
  get 'main_page/index'

  resources :elections

  root 'main_page#index'
end
