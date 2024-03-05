class CreateClasss < ActiveRecord::Migration[7.1]
  def change
    create_table :classs do |t|
      t.string :class_code
      t.string :class_name
      t.string :school_year
      t.integer :student_list
      t.timestamps
    end
  end
end
