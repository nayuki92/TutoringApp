class ReportController < ApplicationController
  before_action :sign_in_required

  def index
    @title = '学習の記録'
    @user_id = current_user.id;
    @reports = Report.where(user_id: @user_id).order("created_at DESC")
    @latest_report = @reports[0]
  end

  def show
    @title = 'Report page'
    @report = Report.find(params[:id])
  end


end

