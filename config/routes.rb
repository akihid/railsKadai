Rails.application.routes.draw do
  resources :toris , only:[:index , :create , :edit , :update , :destroy] do
    collection do
      post :confirm
    end
  end
end
