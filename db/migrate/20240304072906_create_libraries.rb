class CreateLibraries < ActiveRecord::Migration[7.1]
  def change
    create_table :libraries do |t|
      t.string :student_code
      t.string :full_name
      t.string :gmail
      t.integer :phone
      t.integer :number_of_books
      t.date :date_borrow
      t.date :date_pay
      t.timestamps
    end
  end
end
