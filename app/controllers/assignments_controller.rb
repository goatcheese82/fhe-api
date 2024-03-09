class AssignmentsController < ApplicationController
  before_action :set_assignment, only: %i[ show update destroy ]

  # GET /assignments
  def index
    @assignments = Assignment.all
    @assignments.sort_by { |a| a.assignment_type_id }

    render json: @assignments
  end

  # GET /assignments/1
  def show
    render json: @assignment
  end

  # POST /assignments
  def create
    @assignment = Assignment.new(assignment_params)
    if @assignment.meeting.assignments.exists?(assignment_type_id: @assignment.assignment_type_id)
      @assignment.meeting.assignments.destroy_by(assignment_type_id: @assignment.assignment_type_id)
    end

    if @assignment.save
      render json: @assignment, status: :created, location: @assignment
    else
      render json: @assignment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /assignments/1
  def update
    if @assignment.update(assignment_params)
      render json: @assignment
    else
      render json: @assignment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /assignments/1
  def destroy
    @assignment.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_assignment
      @assignment = Assignment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def assignment_params
      params.require(:assignment).permit(:meeting_id, :person_id, :assignment_type_id)
    end
end
