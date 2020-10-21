class Api::V1::JobPostsController < ApplicationController

   skip_before_action :logged_in?, only: [:create]

  def index
    jobposts = JobPost.all
    render json: jobposts , except: [:updated_at, :created_at], status: :ok
  end

  def show
    jobpost = JobPost.find_by(id: params[:id])
    render json: jobpost , except: [:updated_at, :created_at], status: :ok
  end

  def create
    jobpost = JobPost.new(client_id: params[:client_id], job_type: params[:job_type], title: params[:title], description: params[:description], payrate: params[:payrate])
    
    if jobpost.valid?
      jobpost.save
      render json: {jobpost: jobpost}, status: :created
    else
      render json: {error: "Failed to create jobpost"}, status: :not_acceptable
    end

  end

  def update
    jobpost = JobPost.find_by(id: params[:id])
    jobpost.update(jobpost_params)
    render json: jobpost, except: [:updated_at, :created_at], status: :ok
  end

  # private

  # def jobpost_params
  #   params.require(:jobpost).permit(:client_id, :job_type, :title, :description, :payrate)
  #   end
end
