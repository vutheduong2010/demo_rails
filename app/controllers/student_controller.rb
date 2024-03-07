class StudentController < ActionController::Base
  before_action  only: [:show, :edit, :update, :destroy]
  def index
    if params[:query].present?
      @student = Student.where("student_code LIKE ?", "%#{params[:query]}%")
    else
      @student = Student.all
      end
  end

  def search

    @student =Student.where("student_code LIKE ?", "%#{params[:query]}%")

    respond_to do |format|
      format.html {render 'search'}
    end
  end


  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new

    # render :new
  end


  def create
    @student = Student.new(student_params)

    if @student.save
      redirect_to student_index_path, notice: 'Student was successfully created'
    else
      render :new
    end
  end

  def edit
    @student =Student.find(params[:id])
  end
  def update
    @student = Student.find(params[:id])
    if @student.update(student_params)
      redirect_to @student, notice: 'Thong tin sinh vien da duoc cap nhat'
    else
      render :edit
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

