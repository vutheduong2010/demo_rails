class TeacherController < ActionController::Base
  def index
    @teacher = Teacher.all
  end

  def show
    @teacher = Teacher.find(params[:id])
    binding.pry
  end

  def new
    @teacher = Teacher.new
  end

  def create
    @teacher =Teacher.new(teacher_params)
    if @teacher.save
      redirect_to @teacher,notice: 'Teacher was successfully created'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @teacher.update(teacher_params)
      redirect_to @teacher, notice: 'Teacher was successfully updated'
    else
      render :edit
    end
  end

  def destroy
    @teacher.destroy
    redirect_to teacher_url, notice: 'Teacher was successfully destroyed'
  end

  private

  def set_teacher
    @teacher =Teacher.find(params[:id])
  end

  def teacher_params
    params.require(:teacher).permit(:teacher_code, :teacher_name, :date_of_birth, :gender, :gmail, :phone)
  end
end
