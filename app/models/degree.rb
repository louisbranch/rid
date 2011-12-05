class Degree < ActiveRecord::Base
  has_many :courses
  has_many :ids
  validates :name, :presence => true
end
