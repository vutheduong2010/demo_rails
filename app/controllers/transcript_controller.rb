class TranscriptController < ActionController::Base
  def index
    @transcript = Transcript.all
  end
end
