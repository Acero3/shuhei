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
  #postのものはデータ更新だけなのでviewはいらない
  post "/tasks", to: "tasks#create"

  #タスクの編集画面
  get "/tasks/:id/edit", to: "tasks#edit"
  #タスクの更新
  post "/tasks/:id", to: "tasks#update"

  #タスクの削除(DBに編集を加えるのでpost)
  delete "/tasks/:id", to: "tasks#delete"
end
