class AppsController < ApplicationController
  def index
    @apps = App.all
  end

  def edit
  end

  def new
  end
end
