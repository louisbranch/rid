class IdsController < ApplicationController

  def show
    @id = Id.find(params[:id])
    @template= @id.template_path
  end
  
  def new
    @id = Id.new
  end
  
  def create
    @id = Id.new(params[:id])
    if @id.save
      flash[:notice] = "Your ID was created!"
      redirect_to id_path(@id)
    else
      show_errors(@id)
      redirect_to root_path
    end
  end
  
end
