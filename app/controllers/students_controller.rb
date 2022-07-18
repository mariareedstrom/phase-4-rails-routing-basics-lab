class StudentsController < ApplicationController
  def index
    students = Student.all
    render json: students
  end

  def grades
    students = Student.all
    sorted_students = students.sort_by(&:grade).reverse
    render json: sorted_students
  end

  def highest_grade
    students = Student.all
    highest_grade = students.sort_by(&:grade).reverse.first
    render json: highest_grade
  end

end
