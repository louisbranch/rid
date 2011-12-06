class IdsController < ApplicationController

  def show
    @id = Id.find(params[:id])
    @template_path = @id.template_path
    @template = Uerj.new(params[:id])
    @courses = @template.courses
  end
  
  def new
    @id = Id.new
  end
  
  def create
    @id = Id.new(params[:id])
    if @id.save
      flash[:notice] = "Carteirinha Criada!"
      redirect_to id_path(@id)
    else
      show_errors(@id)
      redirect_to root_path
    end
  end
  
end
