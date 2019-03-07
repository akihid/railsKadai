Rails.application.routes.draw do
  resources :toris do
    collection do
      post :confirm
    end
  end
end
