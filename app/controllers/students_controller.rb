class StudentsController < ApplicationController

  def index
    students = params[:name].presence ? Student.where('lower(last_name) LIKE ?' , params[:name]) : Student.all
    render json: students
    
  end

  def show
    student=Student.find(params[:id])
    render json: student
  end



end
