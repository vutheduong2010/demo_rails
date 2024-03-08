class TeacherController < ActionController::Base
  def index
    @teacher = Teacher.all
    @teacher_page = Teacher.page(params[:page]).per(10)
    if params[:query].present?
      @ids = Teacher.where("teacher_code LIKE ?", "%#{params[:query]}%").ids
    end
  end


  def back_to_show
    @teacher = Teacher.find(params[:id])
    redirect_to teacher_path(@teacher)
  end
  def show
    @teacher = Teacher.find(params[:id])
  end

  def new
    @teacher = Teacher.new
  end

  def back_to_index
    redirect_to teacher_index_path
  end

  def create
    @teacher = Teacher.new(teacher_params)
    if @teacher.save
      redirect_to teacher_index_path, notice: 'Teacher was successfully created'
    else
      render :new
    end
  end

  def edit
    @teacher =Teacher.find(params[:id])
  end

  def update
    if @teacher.update(teacher_params)
      redirect_to @teacher, notice: 'Teacher was successfully updated'
    else
      render :edit
    end
  end

  def destroy
    @teacher = Teacher.find(params[:id])
    @teacher.destroy
    redirect_to teacher_index_url, notice: 'Teacher was successfully destroyed'
  end

  private

  def set_teacher
    @teacher =Teacher.find(params[:id])
  end

  def teacher_params
    params.require(:teacher).permit(:teacher_code, :teacher_name, :date_of_birth, :gender, :gmail, :phone)
  end
end
