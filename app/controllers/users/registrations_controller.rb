class Users::RegistrationsController < Devise::RegistrationsController
  def create
    super
  end

  def after_sign_up_path_for(resource)
    books_path
  end
end
