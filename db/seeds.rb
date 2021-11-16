# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Student.new(name: 'Marko', need_dormitory: true, experience: 0, was_teacher: false, what_graduated: 'Teacher PTU', language: 'English').save
Student.new(name: 'Lako', need_dormitory: false, experience: 7, was_teacher: true, what_graduated: 'Teacher PTU', language: 'English').save
Student.new(name: 'Wano', need_dormitory: true, experience: 1, was_teacher: false, what_graduated: 'PTU', language: 'German').save
Student.new(name: 'Purlp', need_dormitory: false, experience: 0, was_teacher: false, what_graduated: 'School', language: 'English').save
Student.new(name: 'Tom', need_dormitory: false, experience: 0, was_teacher: false, what_graduated: 'Lizei', language: 'Italic').save
Student.new(name: 'Marie', need_dormitory: true, experience: 3, was_teacher: true, what_graduated: 'Teacher PTU', language: 'Franch').save