class Api::V1::OffersController < ApplicationController

  def index
    offers = Offer.all
    render json: offers, except: [:updated_at, :created_at], status: :ok
  end

  def show
    offer = Offer.find_by(id: params[:id])
    render json: offer, except: [:updated_at, :created_at], status: :ok
  end

  def create

  end

  def update

  end

  private

  def offer_params
    params.permit(:caregiver_id, :job_post_id, :description)
  end
end
