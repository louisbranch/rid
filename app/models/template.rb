class Template
  attr_reader :user, :degree
  
  def initialize(id)
    @user = Id.find(id)
    @degree = @user.degree
    @university = @user.university
    @time = Time.now
  end
  
end
