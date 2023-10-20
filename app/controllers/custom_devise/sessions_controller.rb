class CustomDevise::SessionsController < Devise::SessionsController
  def after_sign_in_path_for(_resource)
    groups_path
  end

  def new
    @arrow_path = root_path
    @path_description = 'SIGN IN'
    super
  end
end
