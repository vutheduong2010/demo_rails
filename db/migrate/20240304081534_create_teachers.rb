class CreateTeachers < ActiveRecord::Migration[7.1]
  def change
    create_table :teachers do |t|
      t.string :teacher_code
      t.string :teacher_name
      t.date :date_of_birth
      t.string :gender
      t.string :gmail
      t.integer :phone
      t.timestamps
    end
  end
end
