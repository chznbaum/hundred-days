class LogsController < ApplicationController
  before_action :set_log, only: [:show, :edit, :update, :destroy]
  access all: [:index, :show], user: [:index, :show], site_admin: :all

  # GET /logs
  def index
    @all_logs = Log.all
    if Log.count == 0
      @progress = 0
    else
      @progress = Log.last.day
    end
    if logged_in?(:site_admin)
      @logs = Log.by_recent.page params["page"]
    else
      @logs = Log.where(status: 'Published').by_recent.page params["page"]
    end
  end

  # GET /logs/1
  def show
    @comment_count = @log.comments.count
    @comments = @log.comments.by_recent
  end

  # GET /logs/new
  def new
    @log = Log.new
  end

  # GET /logs/1/edit
  def edit
  end

  # POST /logs
  def create
    @log = Log.new(log_params)

    if @log.save
      redirect_to @log, notice: 'Log was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /logs/1
  def update
    if @log.update(log_params)
      redirect_to @log, notice: 'Log was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /logs/1
  def destroy
    @log.destroy
    redirect_to logs_url, notice: 'Log was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_log
      @log = Log.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def log_params
      params.require(:log).permit(:round, :day, :content, :status, :motivation, :created_at, :completed_minutes, :commits)
    end
end
