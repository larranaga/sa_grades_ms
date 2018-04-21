class StudentGradesController < ApplicationController
  before_action :set_student_grade, only: [:show, :update, :destroy]

  # GET /student_grades
  def index
    @student_grades = StudentGrade.all

    render json: @student_grades
  end

  # GET /student_grades/1
  def show
    render json: @student_grade
  end

  # POST /student_grades
  def create
    @student_grade = StudentGrade.new(student_grade_params)

    if @student_grade.save
      render json: @student_grade, status: :created, location: @student_grade
    else
      render json: @student_grade.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /student_grades/1
  def update
    if @student_grade.update(student_grade_params)
      render json: @student_grade
    else
      render json: @student_grade.errors, status: :unprocessable_entity
    end
  end

  # DELETE /student_grades/1
  def destroy
    @student_grade.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student_grade
      @student_grade = StudentGrade.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def student_grade_params
      params.require(:student_grade).permit(:student_id, :course_code, :grade)
    end
end
