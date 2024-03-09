class AssignmentTypesController < ApplicationController
  before_action :set_assignment_type, only: %i[ show update destroy ]

  # GET /assignment_types
  def index
    @assignment_types = AssignmentType.all

    render json: @assignment_types
  end

  # GET /assignment_types/1
  def show
    render json: @assignment_type
  end

  # POST /assignment_types
  def create
    @assignment_type = AssignmentType.new(assignment_type_params)

    if @assignment_type.save
      render json: @assignment_type, status: :created, location: @assignment_type
    else
      render json: @assignment_type.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /assignment_types/1
  def update
    if @assignment_type.update(assignment_type_params)
      render json: @assignment_type
    else
      render json: @assignment_type.errors, status: :unprocessable_entity
    end
  end

  # DELETE /assignment_types/1
  def destroy
    @assignment_type.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_assignment_type
      @assignment_type = AssignmentType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def assignment_type_params
      params.require(:assignment_type).permit(:title)
    end
end
