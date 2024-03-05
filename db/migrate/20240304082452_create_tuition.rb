class CreateTuition < ActiveRecord::Migration[7.1]
  def change
    create_table :tuitions do |t|
      t.string :student_code
      t.string :student_name
      t.integer :phone
      t.string :gmail
      t.float :amount_in_number
      t.string :amount_in_text
      t.timestamps
    end
  end
end
