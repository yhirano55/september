Rails.application.routes.draw do
  resources :input_forms
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  mount GoodJob::Engine => "good_job"

  if Rails.env.development?
    mount Lookbook::Engine, at: "/lookbook"
  end
end
