class StudentsController < ApplicationController

    def index
    end
  
    def new
      @student = Student.new
    end
  
    def show
      @student = Student.find_by(id: params[:id])
    end
  
    def edit
      @student = Student.find_by(id: params[:id])
  
    end
  
    def create
      @student = Student.new(students_params(:first_name, :last_name))
      @student.save
      redirect_to student_path(@student)
    end
  
    def update
      @student = Student.find_by(id: params[:id])
      @student.update(students_params(:first_name, :last_name))
      redirect_to student_path(@student)
    end
  
    private
  
    def students_params(*args)
      params.require(:student).permit(*args)
    end
  
  end