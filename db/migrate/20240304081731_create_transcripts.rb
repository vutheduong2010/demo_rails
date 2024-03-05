class CreateTranscripts < ActiveRecord::Migration[7.1]
  def change
    create_table :transcripts do |t|
      t.references :student, foreign_key: true
      t.string :student_code
      t.string :student_name
      t.date :date_of_birth
      t.string :gender
      t.string :majors_code
      t.float :scores
      t.timestamps
    end
  end
end
