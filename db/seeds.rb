# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# (1..20).each do |index|
#   Teacher.create(teacher_code: "CODE_#{index}", teacher_name: "Name: #{index}",
#                  date_of_birth: Date.current, gender: 'Nam', gmail: "email_#{index}@gmail.com", phone: '0123445555' )
# end
require 'faker'

#(1..20).each do |index|
# Transcript.create(student_code: "CODE_#{index}", student_name: "Name: #{index}",
#                   date_of_birth: Date.current, gender: 'Nam', majors_code: "Majors_#{index}", scores: '8')
#end

#(1..20).each do |index|
#  Tuition.create(student_code: "CODE_#{index}", student_name: "Name: #{index}",
#                phone: '0123456789', gmail: "email_#{index}@gmail.com", amount_in_number: '8', amount_in_text: "Text: #{index}")
#end

#(1..20).each do |index|
# Student.create(student_code: "CODE_#{index}", student_name: "Name: #{index}",
#                date_of_birth: Date.current, address: 'Ha Noi', gmail: "email_#{index}@gmail.com", phone: '0123456789')
#end

#(1..20).each do |index|
# Duong.create(name: "Name: #{index}", age: '23')
#end

(1..20).each do |index|
  Classs.create(class_code: "CODE_#{index}", class_name: "Name: #{index}", school_year: '2023-2024', student_list: '70')
end