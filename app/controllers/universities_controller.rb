class UniversitiesController < ApplicationController
  before_filter :authorize
  
  def index
    @universities = University.all
  end
  
  def show
    @university = University.find(params[:id])
  end
  
  def new
    @university = University.new
  end
  
  def create
    @university = University.new(params[:university])
    if @university.save
      flash[:notice] = "University Created!"
      redirect_to universities_path
    else
      show_errors(@university)
      redirect_to new_university_path
    end
  end
  
  def edit
    @university = University.find(params[:id])
  end
  
  def update
    @university = University.find(params[:id])
    @university.update_attributes(params[:university])
    if @university.save
      flash[:notice] = "University Updated!"
      redirect_to universities_path      
    else
      show_errors(@university)
      redirect_to edit_university_path
    end
  end
  
  def destroy
    @university = University.find(params[:id])
    if @university.destroy
      flash[:notice] = "University Deleted!"
      redirect_to universities_path
    else
      show_errors(@university)
      redirect_to university_path(@university)
    end
  end
  
end

