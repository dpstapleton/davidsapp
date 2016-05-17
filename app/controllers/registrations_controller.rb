class RegistrationsController < Devise::RegistrationsController
  # protected

  def create
    super
    if @user.persisted?
      UserMailer.welcome(@user).deliver_now
    end
  end


  private

  def sign_up_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :current_password, :avatar)
  end
end
