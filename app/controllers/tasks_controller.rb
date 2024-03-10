class TasksController < ApplicationController
    #Viewで変数を使うので「@」をつける
    def index
        @tasks = Task.all
        pp @tasks
    end
    def show
        @task = Task.find(params[:id])
    end
    def new

    end
    def create
        #これもviewがないので@なくても動く
        @task = Task.new(name: params[:task_name])
        @task.save!
        redirect_to "/tasks"
    end

    #タスクの編集画面
    def edit
        #URLのidを元にDBからタスクを検索して@task変数に代入する
        @task = Task.find(params[:id])
    end

    def update
        #URLのidを元にDBからタスクを検索してtask変数に代入する
        #viewがないので@入らない
        task = Task.find(params[:id])
        #オブジェクトのnameにパラメーターで渡されたtask_nameを代入する
        task.name = params[:task_name]
        #タスクを保存する
        task.save!
        #タスク一覧ページへリダイレクトする
        redirect_to "/tasks"
    end
end
