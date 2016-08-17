class Users::SessionsController < Devise::SessionsController
  def destroy
    super
  end

  def after_sign_out_path_for(resource)
    root_path
  end
end
