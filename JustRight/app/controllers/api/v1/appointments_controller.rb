class Api::V1::AppointmentsController < ApplicationController

  def index
    appointments = Appointment.all
    render json: appointments, except: [:updated_at, :created_at], status: :ok
  end

  def show
    appointment = Appointment.find_by(id: params[:id])
    render json: appointment, except: [:updated_at, :created_at], status: :ok
  end

  def create
    appointment = Appointment.new(job_post_id: params[:job_post_id], offer_id: params[:offer_id], start_time: params[:start_time],end_time: params[:end_time], location: params[:location])
    if appointment.valid?
      appointment.save
      render json: appointment, status: :created
    else
      render json: {error: "Failed to create appointment"}, status: :not_acceptable
    end
  end

  def update
      appointment = appointment.find_by(id: params[:id])
      appointment.update(job_post_id: params[:job_post_id], offer_id: params[:offer_id], start_time: params[:start_time],end_time: params[:end_time], location: params[:location])
      render json: appointment, except: [:updated_at, :created_at], status: :ok
  end

  def destroy

  end



  private

  # def appointment_params
  #   params.permit(:job_post_id, :offer_id, :start_time, :end_time, :location)
  # end
end
