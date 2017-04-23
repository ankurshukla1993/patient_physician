class BaseController < ApplicationController
  layout "base"

  #before_action :authenticate_admin!

  # Cancan
  rescue_from CanCan::AccessDenied do |exception|
    if request.format == 'json' || request.accept=~ /json/ || request.content_type =~ /json/
      render :json => {:success => false, :message => exception.message}, :status => 403
    else
      redirect_to root_path, :alert => exception.message
    end
  end

  rescue_from ActiveRecord::RecordNotFound do |exception|
    redirect_to root_path, :alert => exception.message
  end

  rescue_from ActiveRecord::DeleteRestrictionError do |exception|
    redirect_to(:back, :alert => exception.message)
  end

  rescue_from ActionController::RedirectBackError do
    redirect_to root_path
  end

  rescue_from ActionController::InvalidAuthenticityToken do |exception|
    redirect_to root_path, :alert => "Your session expired."
  end

  # def current_ability
  #   @current_ability ||= Ability.new(current_admin)
  # end

  # If we don not set locale in for every request of dashboard then it might pick up
  # locale of the current thread because locale is set gobally.
  def set_default_locale
    I18n.locale = I18n.default_locale
  end

end
