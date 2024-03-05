class CreateMajors < ActiveRecord::Migration[7.1]
  def change
    create_table :majors do |t|
      t.string :majors_code
      t.string :majors_name
      t.integer :list_of_teacher
      t.integer :list_of_student
      t.timestamps
    end
  end
end
