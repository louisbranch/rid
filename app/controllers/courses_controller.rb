class CoursesController < ApplicationController
  
  def new
    @degree = Degree.find(params[:degree_id])
    @course = @degree.courses.build    
  end
  
  def create
    @degree = Degree.find(params[:degree_id])
    @course = @degree.courses.build(params[:course])
    if @course.save
      flash[:notice] = 'Course Created!'
      redirect_to degree_path(@degree)
    else
      show_errors(@degree)
      redirect_to new_degree_course_path(@degree)
    end
  end
  
end
