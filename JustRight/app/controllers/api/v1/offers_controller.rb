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
    offer = Offer.new(caregiver_id: params[:caregiver_id], job_post_id: params[:job_post_id], description: params[:description], payrate: params[:payrate])

    if offer.valid?
      offer.save
      render json: offer, status: :created
    else
      render json: {error: "Failed to submit offer"}, status: :not_acceptable
    end
end

  def update
      offer = Offer.find_by(id: params[:id])
      offer.update(caregiver_id: params[:caregiver_id], job_post_id: params[:job_post_id], description: params[:description, payrate: params[:payrate]])
      render json: offer, except: [:updated_at, :created_at], status: :ok
  end

  def destroy

  end

  # private

  # def offer_params
  #   params.permit(:caregiver_id, :job_post_id, :description, :payrate)
  # end
end
