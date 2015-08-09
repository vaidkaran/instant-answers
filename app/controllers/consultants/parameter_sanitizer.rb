class Consultants::ParameterSanitizer < Devise::ParameterSanitizer
  def sign_in
    default_params.permit(:username, :email)
  end

  def sign_up
    default_params.permit(:fname, :lname, :email, :password, :password_confirmation)
  end
end
