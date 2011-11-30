class DegreesController < ApplicationController

  def index
    @degrees = Degree.all
  end
  
  def show
    @degree = Degree.find(params[:id])
  end
  
  def new
    @degree = Degree.new
  end
  
  def create
    @degree = Degree.new(params[:degree])
    if @degree.save
      flash[:notice] = 'Degree Created!'
      redirect_to degrees_path
    else
      show_errors(@degree)
      redirect_to new_degree_path
    end
  end
  
  def edit
    @degree = Degree.find(params[:id])
  end
  
  def update
    @degree = Degree.find(params[:id])
    @degree.update_attributes(params[:degree])
    if @degree.save
      flash[:notice] = 'Degree Updated!'
      redirect_to degrees_path
    else
      show_errors(@degree)
      redirect_to edit_degree_path
    end
  end
  
  def destroy
    @degree = Degree.find(params[:id])
    if @degree.destroy
      flash[:notice] = 'Degree Deleted!'
      redirect_to degrees_path
    else
      show_errors(@degree)
      redirect_to degree_path(@degree)
    end
  end

end
