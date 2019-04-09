Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    resources :series, only: [:index, :show]
    resources :movies, only: [:index, :show]
    resources :episodes, only: :show

    resources :rentals, only: [:index, :show] do
      collection do
        post 'movies/:id' => :movie
        post 'series/:id' => :serie
      end
    end

    resources :series, only: [ :index, :show ] do
      put "rating", on: :member
    end
  end
end
