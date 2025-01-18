class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  def not_allowed_for_guest
    if current_user.guest?
      redirect_to root_path, notice: 'Operation not allowed'
    end
  end
end
