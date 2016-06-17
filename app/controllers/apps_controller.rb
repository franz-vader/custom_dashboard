class AppsController < ApplicationController
  def index
    @apps = App.all
  end

  def edit
    @app = App.find(params[:id])
  end

  def update
    @app = App.find(params[:id])
    if @app.update_attributes(app_params)
      redirect_to apps_path
    else
      render 'edit'
  end

  def new
    @app = App.new
  end

  def create
    @app = App.new(app_params)
    if @app.save
      redirect_to apps_path
    else
      render "new"
    end
  end

  private

  def app_params
    params.require(:app).premit(:title, :url)
  end

end
