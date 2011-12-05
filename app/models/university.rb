class University < ActiveRecord::Base
  has_many :ids
  validates :name, :presence => true
end
