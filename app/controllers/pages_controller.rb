class PagesController < ApplicationController
  skip_before_action :authenticate_user!, except: :dashboard
  def home
    session[:home_med] = nil
    session[:destination] = nil
    session[:destination_med] = nil
    session[:query] = nil
    session[:home_country] = nil
  end

  def mf_styles
  end

  def dashboard
    @user = current_user
  end
end
