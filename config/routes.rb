Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "top#index"
  get "/second", to: "second#index"
  #URLの /tasks にアクセスしたら、 TasksControllerのindexアクションを呼び出す
  get "/tasks", to: "tasks#index"
  get "/tasks/new", to: "tasks#new"

  get "tasks/:id", to: "tasks#show", as:"task"
  post "/tasks", to: "tasks#create"
end
