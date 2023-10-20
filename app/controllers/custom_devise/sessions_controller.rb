class CustomDevise::SessionsController < Devise::SessionsController
  def after_sign_in_path_for(_resource)
    groups_path
  end

  def new
    @path_description = 'REGISTER'
    super
  end
end
