class RegistrationsController < Devise::RegistrationsController
  def new
    @arrow_path = root_path
    @path_description = 'REGISTER'
    super
  end
end
