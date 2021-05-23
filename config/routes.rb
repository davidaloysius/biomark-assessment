Rails.application.routes.draw do
  resources :lab_studies
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :patients
  resources :patient_labs
end
