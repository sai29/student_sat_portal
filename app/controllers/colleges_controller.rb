class CollegesController < ApplicationController
  def index
    @colleges = College.all
  end

  def show
    @college = College.find_by(id: params[:id])
  end

  def new
    @college = College.new
  end

  def create
    @college = College.new(college_params)
    if @college.save      
      flash[:notice] = "A new college was created"
      redirect_to colleges_url
    else
      redirect_to new_student_url
    end
  end

  def edit
    @college = College.find_by(id: params[:id])
  end

  def update
    @college = College.find_by(id: params[:id])
    if @college.update_attributes(college_params)
      flash[:notice] = "A new college was created"
      redirect_to colleges_url
    else
      redirect_to new_student_url
    end
  end

  def destroy
    @college = College.find(params[:id])
    @college.destroy
  end

  private
    def college_params
      params.require(:college).permit(:name,:country,:sat_min_score, :sat_max_score, :tution_fees)
    end

end
