class TasksController < ApplicationController
    def index
        @tasks = Task.all
        pp @tasks
    end
end

