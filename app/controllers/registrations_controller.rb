class RegistrationsController < Devise::RegistrationsController
  def new
    @path_description = 'REGISTER'
    super
  end
end
