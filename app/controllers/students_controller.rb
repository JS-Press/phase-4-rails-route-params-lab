class StudentsController < ApplicationController

  def index
    if params[:name]
      render json: Student.find_by(first_name: 'kirby')
    else
    render json: Student.all
    end
  end

  def show 
    student = Student.find(params[:id])
    render json: student
  end

end
