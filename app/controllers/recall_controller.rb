class RecallController < ApplicationController
  def recall
    @ordered_feedback_session=OrderedFeedbackSession.new
  end

  def create
    @new_recall=OrderedFeedbackSession.new(recall_params)
    if @new_recall.save
      redirect_to('/')
    else
      redirect_to recall_index_path

    end
  end
  def recall_params
    params.require(:ordered_feedback_session).permit(:username, :phone_number, :description)
  end
end
