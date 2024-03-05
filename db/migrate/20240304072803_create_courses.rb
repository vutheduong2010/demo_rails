class CreateCourses < ActiveRecord::Migration[7.1]
  def change
    create_table :courses do |t|
      t.string :course_code
      t.string :course_name
      t.string :teacher
      t.integer :list_of_registered_student
      t.integer :number_of_credits
      t.timestamps
    end
  end
end
