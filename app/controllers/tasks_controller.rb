class TasksController < ApplicationController
  before_action :authenticate_user!
  before_action :set_current_user
	def index
      @tasks = current_user.tasks
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = current_user.tasks.new(allowed_params)

    if @task.save
      redirect_to @task, :notice => "Successfully created task."
    else
      render :new
    end
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    if @task.update_attributes(allowed_params)
      redirect_to @task, :notice  => "Successfully updated task."
    else
      render :edit
    end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy

    redirect_to tasks_url, :notice => "Successfully destroyed task."
  end

  private
  def set_current_user
    @user = User.find_by(email: current_user.email)
  end  


  def allowed_params
    params.require(:task).permit(:title, :start_time, :end_time)
  end
end
