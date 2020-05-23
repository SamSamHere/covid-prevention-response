Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'citizens#signin'

  get 'register', to: 'citizens#register'
  post 'signin', to: 'citizens#authenticate'
  get 'signin', to: 'citizens#signin'

  # post :admin, to: 'admin#signin'
  # post :admin, to: 'admin#authenticate'

  resources :citizens, only: [:create, :edit, :update] do
    resources :appointments, only: [:new, :create]
  end

  resources :clinics, only: [:new, :create, :edit, :update, :show]

end


# Things to do:
# Model Validation
# Download bootstrap
# Download Forms
