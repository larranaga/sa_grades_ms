class CreateStudentGrades < ActiveRecord::Migration[5.1]
  def change
    create_table :student_grades do |t|
      t.integer :student_id
      t.integer :course_code
      t.float :grade

      t.timestamps
    end
  end
end
