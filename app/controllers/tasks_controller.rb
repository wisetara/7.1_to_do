class TasksController < ApplicationController
  def index
    @tasks = Task.all
    render('tasks/index.html.erb')
  end

  def new
    @task = Task.new
    render('tasks/new.html.erb')
  end

  def create
    @task = Task.create(:description => params[:description])
    if @task.save
      render('tasks/success.html.erb')
    else
      render('tasks/new.html.erb')
    end
  end

  def show
    @task = Task.find(params[:id])
    render('tasks/show.html.erb')
  end

  def edit
    @task = Task.find(params[:id])
    render('tasks/edit.html.erb')
  end

  def update
    @task = Task.find(params[:id])
    if @task.update(:description => params[:description], :mark => params[:task_mark])
      render('tasks/success.html.erb')
    else
      render('tasks/edit.html.erb')
    end




  end

  # def update_mark
  #   @task = Task.find(params[:id])
  #   if @task.update(:mark => true)
  #     render('tasks/success.html.erb')
  #   else
  #     render('tasks/edit.html.erb')
  #   end
  # end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    render('tasks/destroy.html.erb')
  end
end
