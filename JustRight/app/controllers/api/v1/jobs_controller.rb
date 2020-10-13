class Api::V1::JobsController < ApplicationController

  def index
    jobs = Job.all
    render json: jobs, except: [:updated_at, :created_at], status: :ok
  end

  def show
    job = Job.find_by(id: params[:id])
    render json: job, except: [:updated_at, :created_at], status: :ok
  end

end
