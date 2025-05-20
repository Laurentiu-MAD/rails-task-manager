class TasksController < ApplicationController
  def index
    @tasks = Task
  end
end
