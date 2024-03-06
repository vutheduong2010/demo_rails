class StudentController < ActionController::Base
  before_action  only: [:show, :edit, :update, :destroy]
  def index
    @student = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student =Student.new
  end

  def update
    if @student.update(student_params)
      redirect_to @student, notice: 'Student was successfully update'
    else
      render :edit
    end
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      redirect_to @student, notice: 'Student was successfully created'
    else
      render :new
    end
  end

  def destroy
    @student = Student.find(params[:id])
    @student.destroy
    redirect_to student_index_url, notice: 'Student was successfully destroyed'
  end

  private

  def set_student
    @student = Student.find(params[:id])
  end

  def student_params
    params.require(:student).permit(:student_code, :student_name, :date_of_birth, :address, :gmail, :phone)
  end
end

