class PagesController < ApplicationController
  skip_before_action :authenticate_user!, except: :dashboard
  def home
    #recommanded by victor to reset progress bar, disable beccause it logout the user
    # reset_session
  end

  def mf_styles
  end

  def dashboard
  end
end
