class TemplatesController < ApplicationController
  
  def uerj
    @template = Uerj.new(params[:id])
    @courses = @template.courses
  end
  
end
