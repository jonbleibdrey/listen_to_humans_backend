class AudiblesController < ApplicationController
  before_action :set_audible, only: [:show, :update, :destroy]

  # GET /audibles
  def index
    @audibles = Audible.all

    render json: @audibles, include:[:reviews]
  end

  # GET /audibles/1
  def show
    render json: @audible
  end
  
  # POST /audibles
  def create
    @audible = Audible.new(audible_params)
    
    if @audible.save
      render json: @audible, status: :created, location: @audible
    else
      render json: @audible.errors, status: :unprocessable_entity
    end
  end
  
  # PATCH/PUT /audibles/1
  def update
    if @audible.update(audible_params)
      render json: @audible
    else
      render json: @audible.errors, status: :unprocessable_entity
    end
  end
  
  # DELETE /audibles/1
  def destroy
    @audible.destroy
  end
  
  private
  # Use callbacks to share common setup or constraints between actions.
  def set_audible
    @audible = Audible.find(params[:id])
  end
  
  # Only allow a trusted parameter "white list" through.
  def audible_params
    params.require(:audible).permit(:title, :by, :language, :audio_file, :track, :belongs_to)
  end
end
