class Uerj < Template
  
  def student
    year = @time.year
    "#{year - 3}.#{semester}.#{rand(11111-99999)}.#{rand(11-99)} - #{@user.name}"
  end
  
  def date
    year = @time.year
    "#{year} / #{semester}"
  end
  
  def timestamp
    @time.strftime("%d/%m/%Y %H:%M")
  end
  
  def ramification
    @@ram ||= rand(111-999)
  end
  
  def courses
    list = []
    sch = schedules
    courses = Course.all.sort_by { rand }.slice(0, rand(3) + 2)
    courses.each do |course|
      course = UerjCourse.new(course)
      course.schedules = sch.pop(rand(2) + 2)
      list << course
    end
    list
  end
  
  private
  
  def semester
    if @time.month < 6
      1
    else
      2
    end
  end
  
  def schedules
    schedules = []
    days.each do |day|
      periods.each do |period|
        schedules << "#{day} - #{period}"
      end
    end
    schedules.sort_by { rand }
  end
  
  def days
    [
     'Seg',
     'Ter',
     'Qua',
     'Qui',
     'Sex',
    ]    
  end
  
  def periods
    [
      '18:00 - 19:15',
      '19:30 - 20:45',
      '21:00 - 22:15',
    ]
  end
  
end
