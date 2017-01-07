class StaticPagesController < ApplicationController
  before_action :sign_in_required
  def home
    @user_email = current_user.email;
  end

  def help
  end
end
