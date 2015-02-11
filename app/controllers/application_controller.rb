class ApplicationController < ActionController::Base #API
  include ::ActionController::Serialization
  # include ::ActionController::MimeResponds

  rescue_from Exception do |error|
    render json: { error: error.message }, status: 500
  end

  def default_serializer_options
    { root: false }
  end
end
