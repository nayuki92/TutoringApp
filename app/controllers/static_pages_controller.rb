class StaticPagesController < ApplicationController
  before_action :sign_in_required
  def home
    @user_id = current_user.id;
    @user_name = current_user.user_name;
    @updates = Update.where(user_id: @user_id).or(Update.where(user_id: 0)).order("created_at DESC")

  end

  def help
  end
end
