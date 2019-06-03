class PagesController < ApplicationController
  skip_before_action :authenticate_user!, except: :dashboard
  def home
    reset_session
  end

  def mf_styles
  end

  def dashboard
  end
end
