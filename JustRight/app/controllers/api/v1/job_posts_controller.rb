class Api::V1::JobPostsController < ApplicationController

  def index
    jobposts = JobPost.all
    render json: jobposts , except: [:updated_at, :created_at], status: :ok
  end

  def show
    jobpost = JobPost.find_by(id: params[:id])
    render json: jobpost , except: [:updated_at, :created_at], status: :ok
  end

    def created

    end

    def update

    end

    # private

    # def jobPost_params
    # params.permit()
    # end
end
