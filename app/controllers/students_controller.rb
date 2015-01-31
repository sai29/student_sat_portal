class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def show
    @student = Student.find_by(id: params[:id])
    @mentor = Mentor.find_by(id: @student.current_mentor)
    @colleges = []
   @student.applied_colleges.each do |var|
     @colleges << var.to_i
    end
    @college = College.find_by(id:@colleges[0])
    @college_list = []
    @colleges.each do |var|
      @college_list << College.find_by(id:var)
    end
    @college_list.delete_at(@college_list.length-1)
  end

  def new
    @student = Student.new
    @college = []
    College.all.each do |var|
      @college << var.name
      end
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      flash[:notice] = "A new student was created"
      redirect_to students_url
    else
      redirect_to new_student_url
    end
  end

  def edit
    @student = Student.find_by(id: params[:id])
  end

  def update
    @student = Student.find(params[:id])
    if @student.update_attributes(student_params)
      flash[:notice] = "The Student profile was updated!"
    else
      redirect_to edit_students_path
    end
  end

  def destroy
    @student = Student.find(params[:id])
    @student.destroy
    flash[:notice] = "The student was deleted!"
    redirect_to students_url
  end



  private
    def student_params
      params.require(:student).permit(:name, :sex, :age, :dob, :current_school, :current_level, :country, :sat_score,:current_mentor, :applied_colleges => [])
    end
end
