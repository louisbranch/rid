class CoursesController < ApplicationController
  before_filter :authorize
  before_filter :find_degree
  
  def show
    @course = Course.find(params[:id])
  end
  
  def new
    @course = @degree.courses.build    
  end
  
  def create
    @course = @degree.courses.build(params[:course])
    if @course.save
      flash[:notice] = 'Course Created!'
      redirect_to degree_path(@degree)
    else
      show_errors(@degree)
      redirect_to new_degree_course_path(@degree)
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
      redirect_to degree_path(@degree)
    else
      show_errors(@degree)
      redirect_to edit_degree_course_path(@degree)
    end
  end
  
  def destroy
    @course = Course.find(params[:id])
    if @course.destroy
      flash[:notice] = 'Course Deleted!'
      redirect_to degree_path(@degree)
    else
      show_errors(@degree)
      redirect_to degree_course_path(@degree)
    end
  end
  
  private
  
  def find_degree
    @degree = Degree.find(params[:degree_id])
  end
  
end
