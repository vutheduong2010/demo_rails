class ClasssController < ActionController::Base
  def index
    @classs = Classs.all
  end
end
