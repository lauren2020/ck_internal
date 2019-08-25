Rails.application.routes.draw do
  root 'homes#index'
  get 'hello_world', to: 'hello_world#index'
  resources :schools
  resources :class_periods
  resources :staffs
  namespace :api do
    namespace :v1 do
      resources :class_periods
      resources :slack_class_periods
      resources :schools
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html   https://ck-internal.herokuapp.com/
end
