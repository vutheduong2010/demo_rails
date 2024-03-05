class CreateNotifitcations < ActiveRecord::Migration[7.1]
  def change
    create_table :notifitcations do |t|
      t.string :student_code
      t.string :student_name
      t.date :date_of_birth
      t.timestamps
    end
  end
end
