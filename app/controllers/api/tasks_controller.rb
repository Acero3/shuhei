class Api::TasksController < ApplicationController
    #::は
    #タスク一覧取得API
    def index
        #全てのタスクをDBから取得する
        tasks = Task.all
        #ステータスコードは200、ボディをJSONで返す。ボディの中身はタスク一覧の配列
        render status: 200, json: tasks
    end

    def show
        #対象のidの詳細データをDBから取得する
        task = Task.find(params[:id])
        #ステータスコードは200、ボディをJSONで返す。ボディの中身は対応するidのタスク
        render status: 200, json: task
    end
end
