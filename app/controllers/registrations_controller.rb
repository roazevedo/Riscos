class RegistrationsController < Devise::RegistrationsController
  private

  def after_sign_in_path_for(resource)
    processos_path(resource)
  end

  def sign_up_params
    params.require(:user).permit(:email, :password, :password_confirmation, :matricula)
  end
end
