class CoursesController < ApplicationController

  def index
    
  end
  
  def show
    @course = Course.find(params[:id])
  end
  
  def new
    @course = Course.new
  end
  
  def create
    @course = Course.new(params[:course])
    if @course.save
      flash[:notice] = 'Course Created!'
      redirect_to courses_path
    else
      show_errors(@course)
      redirect_to new_course_path
    end
  end
  
  def edit
    @course = Course.find(params[:id])
  end
  
  def update
    @course = Course.find(params[:id])
    @course.update_attributes(params[:course])
    if @course.save
      flash[:notice] = 'Course Updated!'
      redirect_to courses_path
    else
      show_errors(@course)
      redirect_to edit_course_path
    end
  end
  
  def destroy
    @course = Course.find(params[:id])
    if @course.destroy
      flash[:notice] = 'Course Deleted!'
      redirect_to courses_path
    else
      show_errors(@course)
      redirect_to course_path(@course)
    end
  end

end
