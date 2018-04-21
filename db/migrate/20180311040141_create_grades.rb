class CreateGrades < ActiveRecord::Migration[5.1]
  def change
    create_table :grades do |t|
      t.float :grade
      t.integer :student_id
      t.integer :course_code

      t.timestamps
    end
  end
end
