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

  end

  def update

  end

  private

  def appointment_params
    params.permit(:job_post_id, :offer_id, :start_time, :end_time, :location)
  end
end
