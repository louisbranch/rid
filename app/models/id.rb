class Id < ActiveRecord::Base
  attr_accessor :terms_of_service
  belongs_to :university
  belongs_to :degree
  
  validates :name, :presence => true
  validates :terms_of_service, :acceptance => true
  
  def template_path    
    "/templates/#{template}/#{id}"
  end
  
  private
  
  def template
    case self.university.id
    when 1
      'uerj'
    else
      raise
    end
  end
  
end
