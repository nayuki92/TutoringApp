class ReportController < ApplicationController
  before_action :sign_in_required

  def show
    @title = 'Lesson report page'
    @user_id = current_user.id;
    @reports = Report.where(user_id: @user_id)
  end

end
