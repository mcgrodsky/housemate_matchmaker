Rails.application.routes.draw do

  devise_for :users
    root to: 'neighborhoods#index'
    resources :neighborhoods do
      resources :listings
    end

end
