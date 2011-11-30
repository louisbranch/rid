class Course < ActiveRecord::Base
  belongs_to :degree
  validates :name, :presence => true
end
