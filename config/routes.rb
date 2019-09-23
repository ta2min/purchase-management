Rails.application.routes.draw do
  devise_scope :user do
    get 'login' => 'users/sessions#new', as: :new_user_session
    post 'login' => 'users/sessions#create', as: :user_session
    delete 'logout' => 'users/sessions#destroy', as: :destroy_user_session
    get 'signup' => 'users/registrations#new', as: :new_user_registration
    post 'signup' => 'users/registrations#create', as: :user_registration
    get 'signup/cancel' => 'users/registrations#cancel', as: :cancel_user_registration
    get 'user' => 'users/registrations#edit', as: :edit_user_registration
    patch 'user' => 'users/registrations#update', as: nil
    put 'user' => 'users_/registrations#update', as: :update_user_registration
    delete 'user' => 'users_invitable/registrations#destroy', as: :destroy_user_registration
    get 'password' => 'users/passwords#new', as: :new_user_password
    post 'password' => 'users/passwords#create', as: :user_password
    get 'password/edit' => 'users/passwords#edit', as: :edit_user_password
    patch 'password' => 'users/passwords#update'
    put 'password' => 'users/passwords#update', as: :update_user_password
  end

  # devise_for :users, controllers: {
  #   registrations: 'users/registrations',s
  #   sessions: "users/sessions",
  # }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
