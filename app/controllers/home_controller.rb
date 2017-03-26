class HomeController < ApplicationController


  def index

    if user_signed_in?
      if current_user.admin?
           redirect_to  rails_admin.dashboard_path
          #redirect_to users_path
      end
    else
      redirect_to  new_user_session_path
    end
  end
end
