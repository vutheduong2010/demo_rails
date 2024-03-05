class StudentController < ActionController::Base
  def index
    @student =Student.all
  end
end

