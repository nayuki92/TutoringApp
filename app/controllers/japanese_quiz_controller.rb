class JapaneseQuizController < ApplicationController
  before_action :sign_in_required

  def show
    @title = 'japanese quiz page'
  end

end
