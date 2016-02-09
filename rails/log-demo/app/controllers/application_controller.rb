class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def append_info_to_payload(payload)
    super
    # add custom payloads to be logged on each event
    # reference config.lograge.custom_options
    payload[:user] = "12345"
  end

  def route_not_found
    render 'error_pages/404', status: :not_found
  end
end
