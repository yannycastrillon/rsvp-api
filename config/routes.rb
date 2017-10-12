Rails.application.routes.draw do
  devise_for :users
  # devise_scope :user do
  #   get "/", to: "devise/registration#new"
  # end
  namespace :api do
    namespace :v1 do
      resources :guests
    end
  end
end
