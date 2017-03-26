class RegistrationsController < Devise::RegistrationsController


  def new
    @user = User.new

  end
 private
  def sign_up_params
  params.require(:user).permit(:email,:password,:password_confirmation)
  end
    # Never trust parameters from the scary internet, only allow the white list through.
     def account_update_params
     params.require(:user).permit(:email,:password,:password_confirmation,:current_password)
     end

end
