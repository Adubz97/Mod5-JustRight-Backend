class Api::V1::ExperiencesController < ApplicationController

  def index
    experiences = Experience.all
    render json: experiences, except: [:updated_at, :created_at], status: :ok
  end

  def show
    experience = Experience.find_by(id: params[:id])
    render json: experience, except: [:updated_at, :created_at], status: :ok
  end
end
