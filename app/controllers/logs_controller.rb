class LogsController < ApplicationController
  before_action :set_log, only: [:show, :edit, :update, :destroy]
  access all: [:index, :show], user: [:index, :show], site_admin: :all

  # GET /logs
  def index
    @logs = Log.all
  end

  # GET /logs/1
  def show
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
      params.require(:log).permit(:round, :day, :content, :status, :motivation)
    end
end
