class DailyStatusesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_current_user

 def index
    @daily_statuses = current_user.daily_statuses
  end

  def show
    @daily_status = DailyStatus.find(params[:id])
  end

  def new
    @daily_status = DailyStatus.new
  end

  def create
    @daily_status = current_user.daily_statuses.new(daily_status_params)
    if @daily_status.save
      redirect_to @daily_status, :notice => "Successfully created daily status."
    else
      render :new
    end
  end
  
  def edit
    @daily_status = DailyStatus.find(params[:id])
  end

  def update
    @daily_status = DailyStatus.find(params[:id])
    if @daily_status.update_attributes(daily_status_params)
      redirect_to @daily_status, :notice  => "Successfully updated daily status."
    else
      render :edit
    end
  end

  def destroy
    @daily_status = DailyStatus.find(params[:id])
    @daily_status.destroy

    redirect_to daily_statuses_url, :notice => "Successfully destroyed daily status."
  end

  private
  def set_current_user
     @user = User.find_by(email: current_user.email)
  end  

  def daily_status_params
    params.require(:daily_status).permit(:date, :start_time, :end_time)
  end
end
