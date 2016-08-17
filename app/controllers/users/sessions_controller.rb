class Users::SessionsController < Devise::SessionsController
  def create
    super
  end

  def destroy
    super
  end

  def after_sign_in_path_for(resource)
    books_path
  end

  def after_sign_out_path_for(resource)
    root_path
  end
end
