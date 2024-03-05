class TuitionController < ActionController::Base
  def index
    @tuition = Tuition.all
  end
end
