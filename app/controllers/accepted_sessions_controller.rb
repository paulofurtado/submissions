# encoding: UTF-8
class AcceptedSessionsController < ApplicationController
  skip_before_filter :authenticate_user!, :authorize_action
  
  def index
    respond_to do |format|
      format.csv {
        if current_ability.can?(:read, 'accepted_sessions')
          sessions = Session.for_conference(@conference).
            with_state([:accepted]).
            includes(:session_type, :author, :second_author)
          render text: SessionAuthorsCSVExporter.new(sessions).to_csv
        else
          render text: 'Unauthorized', status: 403
        end
      }
    end
  end
end
