class CurriculumController < ApplicationController
  before_action :sign_in_required
  def index
    @user_id = current_user.id;
    @progress = Curriculum.where(user_id: @user_id).first
  end
end
