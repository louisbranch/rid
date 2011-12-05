class UerjCourse
  attr_accessor :schedules
  
  def initialize(course)
    @course = course
  end
  
  def name
    @course.name
  end
  
  def credits
    @@c = rand(4) + 1
  end
  
  def hours
    @@c * 20
  end
  
  def classroom
    rand(5) + 1
  end
  
end
