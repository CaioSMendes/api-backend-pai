class FunctionalitiesController < ApplicationController
  before_action :set_functionality, only: %i[ show update destroy ]

  # GET /functionalities
  def index
    @functionalities = Functionality.all

    render json: @functionalities
  end

  # GET /functionalities/1
  def show
    render json: @functionality
  end

  # POST /functionalities
  def create
    @functionality = Functionality.new(functionality_params)

    if @functionality.save
      render json: @functionality, status: :created, location: @functionality
    else
      render json: @functionality.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /functionalities/1
  def update
    if @functionality.update(functionality_params)
      render json: @functionality
    else
      render json: @functionality.errors, status: :unprocessable_entity
    end
  end

  # DELETE /functionalities/1
  def destroy
    @functionality.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_functionality
      @functionality = Functionality.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def functionality_params
      params.require(:functionality).permit(:nameFunctionality, :dtIncatu, :status)
    end
end
