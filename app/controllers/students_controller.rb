class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def functions
    students = Student.all
    @dormitory_count = 0
    students.each { |s| @dormitory_count += 1 if s.need_dormitory }
  end

  def worked_teacher_student_list
    students = Student.all
    @res = []
    students.each { |s| @res << s if s.was_teacher && s.experience >= 2 }
  end

  def finished_ptu_student_list
    students = Student.all
    @res = []
    students.each { |s| @res << s if s.what_graduated.downcase == 'teacher ptu' }
  end

  def language_group_list
    students = Student.all
    @res = []
    students.each do |s|
      i = nil
      @res.each_index do |index|
        if @res[index].include? s.language
          i = index
          break
        end
      end
      if !i.nil?
        @res[i] += ", #{s.name}"
      else
        @res << "#{@res.size + 1}) #{s.language}: #{s.name}"
      end
    end
  end
end
