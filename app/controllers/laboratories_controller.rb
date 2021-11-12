class LaboratoriesController < ApplicationController
  before_action :set_laboratory, only: %i[show update destroy]
  skip_before_action :verify_authenticity_token

  def index
    @laboratories = Laboratory.where(active: true)
    render json: @laboratories
  end

  def show
    @laboratory = Laboratory.find(params[:id])
    render json: @laboratory
  end

  def new
    @laboratory = Laboratory.new
    render json: @laboratory
  end

  def create
    @laboratory = Laboratory.create(
      name: laboratory_params[:name],
      address: laboratory_params[:address])

    if @laboratory.save
      render json: @laboratory
    else
      render json: :unprocessable_entity
    end

  end

  def update
    if @laboratory.update(update_params_lab)
      render json: @laboratory
    else
      render json: :unprocessable_entity
    end
  end

  def destroy
    @laboratory.destroy
  end

  private

  def set_laboratory
    @laboratory = Laboratory.find(params[:id])
  end

  def laboratory_params
    params.require(:laboratory).permit(:name, :address)
  end

  def update_params_lab
    params.require(:laboratory).permit(:name, :address, :active)
  end

end
