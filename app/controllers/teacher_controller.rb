class TeacherController < ActionController::Base
  def index
    @teacher = Teacher.all
  end
end
