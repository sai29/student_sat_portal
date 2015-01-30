class MentorsController < ApplicationController
  def index
    @mentors = Mentor.all
  end

  def show
    @mentor = Mentor.find_by[id: params[:id]]
  end

  def new
    @mentor = Mentor.new
  end

  def create
    @mentor = Mentor.new(mentors_params)
    if @mentor.save
      flash[:notice] = "A Mentor was created."
    else
      flash[:notice] = "A Mentor was not created."
    end
  end

  def edit
    @mentor = Mentor.find_by(id: params[:id])
  end

  def update
    @mentor = Mentor.find_by(id: params[:id])
    if @mentor.update_attributes(mentors_params)
      flash[:notice] = "The Mentor was updated!"
    else
      flash[:notice] = "A Mentor was not created."
    end
  end

  def destroy
    @mentor = Mentor.find_by(id: params[:id])
    @mentor.destroy
    flash[:notice] = "The Mentor was destroyed." 
  end

  private
    def mentors_params
      params.require(:mentor).permit(:name,:sex,:age,:dob,:bio)
    end
end
