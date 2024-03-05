class CreateStudents < ActiveRecord::Migration[7.1]
  def change
    create_table :students do |t|
      t.string :student_code
      t.string :student_name
      t.date :date_of_birth
      t.string :address
      t.string :gmail
      t.integer :phone
      t.timestamps
    end
  end
end
