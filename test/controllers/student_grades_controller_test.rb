require 'test_helper'

class StudentGradesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @student_grade = student_grades(:one)
  end

  test "should get index" do
    get student_grades_url, as: :json
    assert_response :success
  end

  test "should create student_grade" do
    assert_difference('StudentGrade.count') do
      post student_grades_url, params: { student_grade: { course_code: @student_grade.course_code, grade: @student_grade.grade, student_id: @student_grade.student_id } }, as: :json
    end

    assert_response 201
  end

  test "should show student_grade" do
    get student_grade_url(@student_grade), as: :json
    assert_response :success
  end

  test "should update student_grade" do
    patch student_grade_url(@student_grade), params: { student_grade: { course_code: @student_grade.course_code, grade: @student_grade.grade, student_id: @student_grade.student_id } }, as: :json
    assert_response 200
  end

  test "should destroy student_grade" do
    assert_difference('StudentGrade.count', -1) do
      delete student_grade_url(@student_grade), as: :json
    end

    assert_response 204
  end
end
