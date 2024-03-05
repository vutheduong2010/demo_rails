class DuongController < ActionController::Base
  def index
    @duong = Duong.all
  end
end
