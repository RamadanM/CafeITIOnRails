class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
#   def after_sign_in_path_for(resource)
#   # Here you can write logic based on roles to return different after sign in paths
#   if current_user.admin?
#     users_path
#
#   else
#     new_user_path
#   end
# end
end
