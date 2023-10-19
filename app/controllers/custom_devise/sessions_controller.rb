class CustomDevise::SessionsController < Devise::SessionsController
    def after_sign_in_path_for(resource)
     groups_path
    end
  end
  