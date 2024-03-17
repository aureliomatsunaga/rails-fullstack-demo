Rails.application.routes.draw do
  root 'site#index'

  resources :posts do
    resources :comments
  end
end
