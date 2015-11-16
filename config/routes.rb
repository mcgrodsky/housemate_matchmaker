Rails.application.routes.draw do

    root to: 'neighborhoods#index'
    resources :neighborhoods do
      resources :listings
    end

end
