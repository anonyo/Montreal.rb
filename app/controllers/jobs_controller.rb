class JobsController < ApplicationController
  def index
    @jobs = Job.published
  end
  def show
    @job = Job.find(params[:id])
  end
end
