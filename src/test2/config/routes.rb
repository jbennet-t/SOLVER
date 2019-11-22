Rails.application.routes.draw do
  get 'main_page/index'
  get 'elections/index'

  resources :elections

  root 'main_page#index'
end
