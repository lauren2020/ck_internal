Rails.application.routes.draw do
  resources :schools
  resources :class_periods
  resources :staff
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html   https://ck-internal.herokuapp.com/
end
