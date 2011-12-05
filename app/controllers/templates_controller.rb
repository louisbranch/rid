class TemplatesController < ApplicationController
  layout false
  
  def uerj
    @template = Uerj.new(params[:id])
    @courses = @template.courses
  end
  
end
